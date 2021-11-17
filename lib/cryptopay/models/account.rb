# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Account
    ENCODER = Encoder.new(
      name: 'Cryptopay::Account',
      attribute_map: {
        'id': :id,
        'currency': :currency,
        'balance': :balance,
        'project_id': :project_id
      },
      types: {
        'id': :String,
        'currency': :String,
        'balance': :Decimal,
        'project_id': :String
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    def id
      @attributes[:id]
    end

    def currency
      @attributes[:currency]
    end

    def balance
      @attributes[:balance]
    end

    def project_id
      @attributes[:project_id]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "id", id cannot be nil.') if id.nil?

      properties.push('invalid value for "currency", currency cannot be nil.') if currency.nil?

      properties.push('invalid value for "balance", balance cannot be nil.') if balance.nil?

      properties.push('invalid value for "project_id", project_id cannot be nil.') if project_id.nil?

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Account] Returns the model itself
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
