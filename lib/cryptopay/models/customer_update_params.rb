# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class CustomerUpdateParams
    ENCODER = Encoder.new(
      name: 'Cryptopay::CustomerUpdateParams',
      attribute_map: {
        'currency': :currency,
        'addresses': :addresses
      },
      types: {
        'currency': :String,
        'addresses': :'Array<CustomerAddress>'
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # The customer's currency in your system
    def currency
      @attributes[:currency]
    end

    # This array allows you to specify 1 cryptocurrency address for each type of supported cryptocurrencies i.e. BTC, ETH, XRP, LTC and BCH. In case Cryptopay detects a High-Risk transaction, such transaction will not be processed. Instead, it will be sent to the address specified for respective cryptocurrency. If you do not specify any addresses here, High-Risk payments will be put on hold
    def addresses
      @attributes[:addresses]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      addresses&.each_with_index do |item, index|
        item.invalid_properties.each do |prop|
          properties.push("invalid value for \"addresses.#{index}\": #{prop}")
        end
      end

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::CustomerUpdateParams] Returns the model itself
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
