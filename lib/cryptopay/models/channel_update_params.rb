# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class ChannelUpdateParams
    ENCODER = Encoder.new(
      name: 'Cryptopay::ChannelUpdateParams',
      attribute_map: {
        'name': :name,
        'description': :description,
        'status': :status,
        'customer_id': :customer_id
      },
      types: {
        'name': :String,
        'description': :String,
        'status': :ChannelStatus,
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

    def status
      @attributes[:status]
    end

    # The internal ID of your customer that the channel relates to
    def customer_id
      @attributes[:customer_id]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      if !status.nil? && !%w[enabled disabled].include?(status)
        properties.push('invalid value for status, must be one of "enabled", "disabled"')
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
    # @return [Cryptopay::ChannelUpdateParams] Returns the model itself
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
