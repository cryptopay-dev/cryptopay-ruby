# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class InvoiceCallback
    ENCODER = Encoder.new(
      name: 'Cryptopay::InvoiceCallback',
      attribute_map: {
        'type': :type,
        'event': :event,
        'data': :data
      },
      types: {
        'type': :String,
        'event': :InvoiceCallbackEvent,
        'data': :Invoice
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    def type
      @attributes[:type]
    end

    def event
      @attributes[:event]
    end

    def data
      @attributes[:data]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "type", type cannot be nil.') if type.nil?

      properties.push('invalid value for type, must be one of "Invoice"') if !type.nil? && !['Invoice'].include?(type)

      properties.push('invalid value for "event", event cannot be nil.') if event.nil?

      if !event.nil? && !%w[created refunded recalculated status_changed transaction_created transaction_confirmed].include?(event)
        properties.push('invalid value for event, must be one of "created", "refunded", "recalculated", "status_changed", "transaction_created", "transaction_confirmed"')
      end

      properties.push('invalid value for "data", data cannot be nil.') if data.nil?

      data&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"data\": #{prop}")
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
    # @return [Cryptopay::InvoiceCallback] Returns the model itself
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
