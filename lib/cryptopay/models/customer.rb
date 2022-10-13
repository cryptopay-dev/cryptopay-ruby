# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Customer
    ENCODER = Encoder.new(
      name: 'Cryptopay::Customer',
      attribute_map: {
        'id': :id,
        'currency': :currency,
        'refund_addresses': :refund_addresses
      },
      types: {
        'id': :String,
        'currency': :String,
        'refund_addresses': :'Hash<String, String>'
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # The customer's reference ID in your system
    def id
      @attributes[:id]
    end

    # The customer's currency in your system
    def currency
      @attributes[:currency]
    end

    # The list of refund addresses where Cryptopay will refund High-Risk transactions to
    def refund_addresses
      @attributes[:refund_addresses]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "id", id cannot be nil.') if id.nil?

      properties.push('invalid value for "currency", currency cannot be nil.') if currency.nil?

      properties.push('invalid value for "refund_addresses", refund_addresses cannot be nil.') if refund_addresses.nil?

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Customer] Returns the model itself
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
