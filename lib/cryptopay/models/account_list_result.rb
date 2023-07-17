# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class AccountListResult
    ENCODER = Encoder.new(
      name: 'Cryptopay::AccountListResult',
      attribute_map: {
        'data': :data,
        'meta': :meta
      },
      types: {
        'data': :'Array<Account>',
        'meta': :Pagination
      },
      nullables: []
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::AccountListResult] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    def data
      @attributes[:data]
    end

    def meta
      @attributes[:meta]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "data", data cannot be nil.') if data.nil?

      data&.each_with_index do |item, index|
        item.invalid_properties.each do |prop|
          properties.push("invalid value for \"data.#{index}\": #{prop}")
        end
      end

      properties.push('invalid value for "meta", meta cannot be nil.') if meta.nil?

      meta&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"meta\": #{prop}")
      end

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      ENCODER.to_hash(@attributes)
    end

    def inspect
      "#<#{self.class}:0x#{object_id.to_s(16)}> JSON: " + JSON.pretty_generate(to_hash)
    end
  end
end
