# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class CoinNetwork
    ENCODER = Encoder.new(
      name: 'Cryptopay::CoinNetwork',
      attribute_map: {
        'network': :network,
        'name': :name,
        'precision': :precision,
        'destination_tag': :destination_tag,
        'invoices': :invoices,
        'channels': :channels,
        'coin_withdrawals': :coin_withdrawals
      },
      types: {
        'network': :String,
        'name': :String,
        'precision': :Integer,
        'destination_tag': :CoinDestinationTag,
        'invoices': :InvoicesConfig,
        'channels': :ChannelsConfig,
        'coin_withdrawals': :CoinWithdrawalsConfig
      },
      nullables: [
        :destination_tag
      ]
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::CoinNetwork] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    def network
      @attributes[:network]
    end

    def name
      @attributes[:name]
    end

    def precision
      @attributes[:precision]
    end

    def destination_tag
      @attributes[:destination_tag]
    end

    def invoices
      @attributes[:invoices]
    end

    def channels
      @attributes[:channels]
    end

    def coin_withdrawals
      @attributes[:coin_withdrawals]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "network", network cannot be nil.') if network.nil?

      properties.push('invalid value for "name", name cannot be nil.') if name.nil?

      properties.push('invalid value for "precision", precision cannot be nil.') if precision.nil?

      destination_tag&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"destination_tag\": #{prop}")
      end

      properties.push('invalid value for "invoices", invoices cannot be nil.') if invoices.nil?

      invoices&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"invoices\": #{prop}")
      end

      properties.push('invalid value for "channels", channels cannot be nil.') if channels.nil?

      channels&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"channels\": #{prop}")
      end

      properties.push('invalid value for "coin_withdrawals", coin_withdrawals cannot be nil.') if coin_withdrawals.nil?

      coin_withdrawals&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"coin_withdrawals\": #{prop}")
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
