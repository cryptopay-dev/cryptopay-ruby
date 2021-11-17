# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Pagination
    ENCODER = Encoder.new(
      name: 'Cryptopay::Pagination',
      attribute_map: {
        'total': :total,
        'has_more': :has_more
      },
      types: {
        'total': :Integer,
        'has_more': :Boolean
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    def total
      @attributes[:total]
    end

    def has_more
      @attributes[:has_more]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "total", total cannot be nil.') if total.nil?

      properties.push('invalid value for "has_more", has_more cannot be nil.') if has_more.nil?

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Pagination] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
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
