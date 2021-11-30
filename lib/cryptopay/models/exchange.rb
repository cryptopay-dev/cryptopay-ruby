# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  # Exchange details
  class Exchange
    ENCODER = Encoder.new(
      name: 'Cryptopay::Exchange',
      attribute_map: {
        'pair': :pair,
        'rate': :rate,
        'fee': :fee,
        'fee_currency': :fee_currency
      },
      types: {
        'pair': :String,
        'rate': :Decimal,
        'fee': :Decimal,
        'fee_currency': :String
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Currency pair
    def pair
      @attributes[:pair]
    end

    # Exchange rate
    def rate
      @attributes[:rate]
    end

    # Exchange fee
    def fee
      @attributes[:fee]
    end

    # Exchange fee currency
    def fee_currency
      @attributes[:fee_currency]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "pair", pair cannot be nil.') if pair.nil?

      properties.push('invalid value for "rate", rate cannot be nil.') if rate.nil?

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Exchange] Returns the model itself
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
