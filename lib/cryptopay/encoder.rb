# frozen_string_literal: true

module Cryptopay
  class Encoder
    def initialize(name:, attribute_map:, types:, nullables:)
      @name = name
      @attribute_map = attribute_map
      @types = types
      @nullables = nullables
    end

    def sanitize(attributes)
      attributes.each_with_object({}) do |(k, v), h|
        unless attribute_map.key?(k.to_sym)
          raise(
            ArgumentError,
            "`#{k}` is not a valid attribute in `#{name}`. " \
            "Please check the name to make sure it's valid. List of attributes: " + attribute_map.keys.inspect
          )
        end

        h[k.to_sym] = v
      end
    end

    def build_from_hash(data)
      types.each_with_object({}) do |(key, type), attributes|
        value = data[attribute_map[key]]

        if value.nil?
          attributes[key] = nil if nullables.include?(key)
        elsif type =~ /\AArray<(.*)>/i
          attributes[key] = value.map { |v| _deserialize(Regexp.last_match(1), v) }
        else
          attributes[key] = _deserialize(type, value)
        end
      end
    end

    def to_hash(attributes)
      attribute_map.each_with_object({}) do |(attr, param), hash|
        value = attributes[attr]
        if value.nil?
          nullable = nullables.include?(attr)

          # Skip non-nullable attributes with nil values
          next unless nullable

          # Skip nullable attributes which was not explicitly set
          next unless attributes.key?(attr)
        end

        hash[param] = _to_hash(value)
      end
    end

    private

    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else
        klass = Cryptopay.const_get(type)
        klass.build_from_hash(value)
      end
    end

    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to?(:to_hash)
        value.to_hash
      else
        value
      end
    end

    attr_reader :name, :attribute_map, :types, :nullables
  end
end
