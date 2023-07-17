# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class CustomerAddress
    ENCODER = Encoder.new(
      name: 'Cryptopay::CustomerAddress',
      attribute_map: {
        'address': :address,
        'currency': :currency,
        'network': :network
      },
      types: {
        'address': :String,
        'currency': :String,
        'network': :String
      },
      nullables: []
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::CustomerAddress] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Cryptocurrency address
    def address
      @attributes[:address]
    end

    # Cryptocurrency name
    def currency
      @attributes[:currency]
    end

    # Cryptocurrency network
    def network
      @attributes[:network]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "address", address cannot be nil.') if address.nil?

      properties.push('invalid value for "currency", currency cannot be nil.') if currency.nil?

      properties.push('invalid value for "network", network cannot be nil.') if network.nil?

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
