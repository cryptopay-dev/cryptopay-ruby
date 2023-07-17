# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Channel
    ENCODER = Encoder.new(
      name: 'Cryptopay::Channel',
      attribute_map: {
        'id': :id,
        'status': :status,
        'name': :name,
        'description': :description,
        'pay_currency': :pay_currency,
        'receiver_currency': :receiver_currency,
        'address': :address,
        'network': :network,
        'project_id': :project_id,
        'custom_id': :custom_id,
        'customer_id': :customer_id,
        'uri': :uri,
        'hosted_page_url': :hosted_page_url
      },
      types: {
        'id': :String,
        'status': :ChannelStatus,
        'name': :String,
        'description': :String,
        'pay_currency': :String,
        'receiver_currency': :String,
        'address': :String,
        'network': :String,
        'project_id': :String,
        'custom_id': :String,
        'customer_id': :String,
        'uri': :String,
        'hosted_page_url': :String
      },
      nullables: %i[
        description
        custom_id
        customer_id
      ]
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Channel] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Channel ID
    def id
      @attributes[:id]
    end

    def status
      @attributes[:status]
    end

    # Channel name
    def name
      @attributes[:name]
    end

    # Channel description
    def description
      @attributes[:description]
    end

    # The cryptocurrency which you want to accept
    def pay_currency
      @attributes[:pay_currency]
    end

    # The currency which all incoming transactions will be converted to
    def receiver_currency
      @attributes[:receiver_currency]
    end

    # Channel description
    def address
      @attributes[:address]
    end

    # Cryptocurrency network
    def network
      @attributes[:network]
    end

    # Project ID
    def project_id
      @attributes[:project_id]
    end

    # The channel reference ID in your system
    def custom_id
      @attributes[:custom_id]
    end

    # The reference ID of your customer
    def customer_id
      @attributes[:customer_id]
    end

    # Channel URI. May be used for generating a QR code
    def uri
      @attributes[:uri]
    end

    # Channel hosted page that renders channel details
    def hosted_page_url
      @attributes[:hosted_page_url]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "id", id cannot be nil.') if id.nil?

      properties.push('invalid value for "status", status cannot be nil.') if status.nil?

      if !status.nil? && !%w[enabled disabled].include?(status)
        properties.push('invalid value for status, must be one of "enabled", "disabled"')
      end

      properties.push('invalid value for "name", name cannot be nil.') if name.nil?

      properties.push('invalid value for "pay_currency", pay_currency cannot be nil.') if pay_currency.nil?

      if receiver_currency.nil?
        properties.push('invalid value for "receiver_currency", receiver_currency cannot be nil.')
      end

      properties.push('invalid value for "address", address cannot be nil.') if address.nil?

      properties.push('invalid value for "network", network cannot be nil.') if network.nil?

      properties.push('invalid value for "project_id", project_id cannot be nil.') if project_id.nil?

      properties.push('invalid value for "uri", uri cannot be nil.') if uri.nil?

      properties.push('invalid value for "hosted_page_url", hosted_page_url cannot be nil.') if hosted_page_url.nil?

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
