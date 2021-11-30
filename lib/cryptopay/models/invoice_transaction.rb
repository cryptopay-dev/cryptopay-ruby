# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  # Cryptocurrency transaction hash and its risk level details
  class InvoiceTransaction
    ENCODER = Encoder.new(
      name: 'Cryptopay::InvoiceTransaction',
      attribute_map: {
        'txid': :txid,
        'risk': :risk
      },
      types: {
        'txid': :String,
        'risk': :Risk
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Transaction hash
    def txid
      @attributes[:txid]
    end

    def risk
      @attributes[:risk]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "txid", txid cannot be nil.') if txid.nil?

      risk&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"risk\": #{prop}")
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
    # @return [Cryptopay::InvoiceTransaction] Returns the model itself
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
