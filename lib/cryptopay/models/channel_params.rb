# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class ChannelParams
    ENCODER = Encoder.new(
      name: 'Cryptopay::ChannelParams',
      attribute_map: {
        'name': :name,
        'description': :description,
        'pay_currency': :pay_currency,
        'receiver_currency': :receiver_currency,
        'custom_id': :custom_id,
        'customer_id': :customer_id
      },
      types: {
        'name': :String,
        'description': :String,
        'pay_currency': :String,
        'receiver_currency': :String,
        'custom_id': :String,
        'customer_id': :String
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    def name
      @attributes[:name]
    end

    def description
      @attributes[:description]
    end

    def pay_currency
      @attributes[:pay_currency]
    end

    def receiver_currency
      @attributes[:receiver_currency]
    end

    # The payment reference ID in your system
    def custom_id
      @attributes[:custom_id]
    end

    # The internal ID of your customer that the channel relates to
    def customer_id
      @attributes[:customer_id]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "name", name cannot be nil.') if name.nil?

      properties.push('invalid value for "pay_currency", pay_currency cannot be nil.') if pay_currency.nil?

      if receiver_currency.nil?
        properties.push('invalid value for "receiver_currency", receiver_currency cannot be nil.')
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
    # @return [Cryptopay::ChannelParams] Returns the model itself
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
