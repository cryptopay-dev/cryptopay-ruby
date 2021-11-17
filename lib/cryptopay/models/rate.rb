# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Rate
    ENCODER = Encoder.new(
      name: 'Cryptopay::Rate',
      attribute_map: {
        'buy_rate': :buy_rate,
        'sell_rate': :sell_rate
      },
      types: {
        'buy_rate': :Decimal,
        'sell_rate': :Decimal
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Buy rate
    def buy_rate
      @attributes[:buy_rate]
    end

    # Buy rate
    def sell_rate
      @attributes[:sell_rate]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "buy_rate", buy_rate cannot be nil.') if buy_rate.nil?

      properties.push('invalid value for "sell_rate", sell_rate cannot be nil.') if sell_rate.nil?

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Rate] Returns the model itself
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
