# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class ExchangeTransferParams
    ENCODER = Encoder.new(
      name: 'Cryptopay::ExchangeTransferParams',
      attribute_map: {
        'charged_currency': :charged_currency,
        'charged_amount': :charged_amount,
        'received_currency': :received_currency,
        'received_amount': :received_amount,
        'custom_id': :custom_id,
        'force_commit': :force_commit
      },
      types: {
        'charged_currency': :String,
        'charged_amount': :Decimal,
        'received_currency': :String,
        'received_amount': :Decimal,
        'custom_id': :String,
        'force_commit': :Boolean
      },
      nullables: %i[
        charged_amount
        received_amount
      ]
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::ExchangeTransferParams] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Account currency the funds to be converted from
    def charged_currency
      @attributes[:charged_currency]
    end

    # Amount to be converted
    def charged_amount
      @attributes[:charged_amount]
    end

    # Account currency the funds to be converted to
    def received_currency
      @attributes[:received_currency]
    end

    # Amount to be received upon exchange execution
    def received_amount
      @attributes[:received_amount]
    end

    # Exchange transaction reference ID in your system
    def custom_id
      @attributes[:custom_id]
    end

    # Is `false` if omitted. Set `true` to turn off two-step exchange. Set `false` for two-step exchange and commit it within 30 seconds
    def force_commit
      @attributes[:force_commit]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "charged_currency", charged_currency cannot be nil.') if charged_currency.nil?

      if received_currency.nil?
        properties.push('invalid value for "received_currency", received_currency cannot be nil.')
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
