# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class CoinDestinationTag
    ENCODER = Encoder.new(
      name: 'Cryptopay::CoinDestinationTag',
      attribute_map: {
        'required': :required,
        'name': :name
      },
      types: {
        'required': :Boolean,
        'name': :String
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    def required
      @attributes[:required]
    end

    def name
      @attributes[:name]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "required", required cannot be nil.') if required.nil?

      properties.push('invalid value for "name", name cannot be nil.') if name.nil?

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::CoinDestinationTag] Returns the model itself
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
