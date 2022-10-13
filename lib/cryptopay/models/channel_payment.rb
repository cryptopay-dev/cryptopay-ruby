# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class ChannelPayment
    ENCODER = Encoder.new(
      name: 'Cryptopay::ChannelPayment',
      attribute_map: {
        'id': :id,
        'channel_id': :channel_id,
        'paid_amount': :paid_amount,
        'paid_currency': :paid_currency,
        'received_amount': :received_amount,
        'received_currency': :received_currency,
        'fee': :fee,
        'fee_currency': :fee_currency,
        'txid': :txid,
        'exchange': :exchange,
        'risk': :risk,
        'status': :status,
        'status_context': :status_context,
        'refund_address': :refund_address,
        'coin_withdrawal_id': :coin_withdrawal_id,
        'custom_id': :custom_id,
        'customer_id': :customer_id,
        'address': :address,
        'network': :network,
        'created_at': :created_at
      },
      types: {
        'id': :String,
        'channel_id': :String,
        'paid_amount': :Decimal,
        'paid_currency': :String,
        'received_amount': :Decimal,
        'received_currency': :String,
        'fee': :Decimal,
        'fee_currency': :String,
        'txid': :String,
        'exchange': :Exchange,
        'risk': :Risk,
        'status': :ChannelPaymentStatus,
        'status_context': :ChannelPaymentStatusContext,
        'refund_address': :String,
        'coin_withdrawal_id': :String,
        'custom_id': :String,
        'customer_id': :String,
        'address': :String,
        'network': :String,
        'created_at': :Time
      },
      nullables: %i[
        status_context
        refund_address
        coin_withdrawal_id
        custom_id
        customer_id
      ]
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Channel payment ID
    def id
      @attributes[:id]
    end

    # Channel ID
    def channel_id
      @attributes[:channel_id]
    end

    # Cryptocurrency transaction amount that was received
    def paid_amount
      @attributes[:paid_amount]
    end

    # Cryptocurrency type
    def paid_currency
      @attributes[:paid_currency]
    end

    # Amount credited to your Cryptopay account
    def received_amount
      @attributes[:received_amount]
    end

    # Account currency
    def received_currency
      @attributes[:received_currency]
    end

    # Processing fee
    def fee
      @attributes[:fee]
    end

    # Processing fee currency
    def fee_currency
      @attributes[:fee_currency]
    end

    # Cryptocurrency transaction ID on the blockchain
    def txid
      @attributes[:txid]
    end

    def exchange
      @attributes[:exchange]
    end

    def risk
      @attributes[:risk]
    end

    def status
      @attributes[:status]
    end

    def status_context
      @attributes[:status_context]
    end

    def refund_address
      @attributes[:refund_address]
    end

    def coin_withdrawal_id
      @attributes[:coin_withdrawal_id]
    end

    # Channel payment custom_id value inherited from its parent channel
    def custom_id
      @attributes[:custom_id]
    end

    # The reference ID of your customer
    def customer_id
      @attributes[:customer_id]
    end

    # Channel cryptocurrency address
    def address
      @attributes[:address]
    end

    # Cryptocurrency network
    def network
      @attributes[:network]
    end

    # Channel payment creation date and time
    def created_at
      @attributes[:created_at]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "id", id cannot be nil.') if id.nil?

      properties.push('invalid value for "channel_id", channel_id cannot be nil.') if channel_id.nil?

      properties.push('invalid value for "paid_amount", paid_amount cannot be nil.') if paid_amount.nil?

      properties.push('invalid value for "paid_currency", paid_currency cannot be nil.') if paid_currency.nil?

      properties.push('invalid value for "received_amount", received_amount cannot be nil.') if received_amount.nil?

      if received_currency.nil?
        properties.push('invalid value for "received_currency", received_currency cannot be nil.')
      end

      properties.push('invalid value for "fee", fee cannot be nil.') if fee.nil?

      properties.push('invalid value for "fee_currency", fee_currency cannot be nil.') if fee_currency.nil?

      properties.push('invalid value for "txid", txid cannot be nil.') if txid.nil?

      exchange&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"exchange\": #{prop}")
      end

      risk&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"risk\": #{prop}")
      end

      properties.push('invalid value for "status", status cannot be nil.') if status.nil?

      if !status.nil? && !%w[pending on_hold completed refunded cancelled].include?(status)
        properties.push('invalid value for status, must be one of "pending", "on_hold", "completed", "refunded", "cancelled"')
      end

      if !status_context.nil? && !%w[illicit_resource channel_disabled].include?(status_context)
        properties.push('invalid value for status_context, must be one of "illicit_resource", "channel_disabled"')
      end

      properties.push('invalid value for "created_at", created_at cannot be nil.') if created_at.nil?

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::ChannelPayment] Returns the model itself
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
