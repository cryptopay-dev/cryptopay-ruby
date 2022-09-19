# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class CoinWithdrawal
    ENCODER = Encoder.new(
      name: 'Cryptopay::CoinWithdrawal',
      attribute_map: {
        'id': :id,
        'custom_id': :custom_id,
        'customer_id': :customer_id,
        'address': :address,
        'txid': :txid,
        'status': :status,
        'charged_amount': :charged_amount,
        'charged_currency': :charged_currency,
        'received_amount': :received_amount,
        'received_currency': :received_currency,
        'network_fee': :network_fee,
        'network_fee_level': :network_fee_level,
        'fee': :fee,
        'fee_currency': :fee_currency,
        'exchange': :exchange,
        'risk': :risk,
        'created_at': :created_at
      },
      types: {
        'id': :String,
        'custom_id': :String,
        'customer_id': :String,
        'address': :String,
        'txid': :String,
        'status': :CoinWithdrawalStatus,
        'charged_amount': :Decimal,
        'charged_currency': :String,
        'received_amount': :Decimal,
        'received_currency': :String,
        'network_fee': :Decimal,
        'network_fee_level': :NetworkFeeLevel,
        'fee': :Decimal,
        'fee_currency': :String,
        'exchange': :Exchange,
        'risk': :Risk,
        'created_at': :Time
      },
      nullables: %i[
        id
        custom_id
        customer_id
        txid
      ]
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Coin withdrawal ID
    def id
      @attributes[:id]
    end

    # Payment reference ID in your system
    def custom_id
      @attributes[:custom_id]
    end

    # The reference ID of your customer
    def customer_id
      @attributes[:customer_id]
    end

    # Recipient's cryptocurrency wallet address
    def address
      @attributes[:address]
    end

    # Cryptocurrency transaction ID on the blockchain
    def txid
      @attributes[:txid]
    end

    def status
      @attributes[:status]
    end

    # Payment amount. Amount charged from your account
    def charged_amount
      @attributes[:charged_amount]
    end

    # Account currency the payment has been sent from
    def charged_currency
      @attributes[:charged_currency]
    end

    # Cryptocurrency transaction amount. Exact amount received by a recipient
    def received_amount
      @attributes[:received_amount]
    end

    # Cryptocurrency type
    def received_currency
      @attributes[:received_currency]
    end

    # Network fee amount
    def network_fee
      @attributes[:network_fee]
    end

    def network_fee_level
      @attributes[:network_fee_level]
    end

    def fee
      @attributes[:fee]
    end

    def fee_currency
      @attributes[:fee_currency]
    end

    def exchange
      @attributes[:exchange]
    end

    def risk
      @attributes[:risk]
    end

    # Coin withdrawal creation date and time
    def created_at
      @attributes[:created_at]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "address", address cannot be nil.') if address.nil?

      properties.push('invalid value for "status", status cannot be nil.') if status.nil?

      if !status.nil? && !%w[new pending on_hold processing sent completed failed cancelled].include?(status)
        properties.push('invalid value for status, must be one of "new", "pending", "on_hold", "processing", "sent", "completed", "failed", "cancelled"')
      end

      properties.push('invalid value for "charged_amount", charged_amount cannot be nil.') if charged_amount.nil?

      properties.push('invalid value for "charged_currency", charged_currency cannot be nil.') if charged_currency.nil?

      properties.push('invalid value for "received_amount", received_amount cannot be nil.') if received_amount.nil?

      if received_currency.nil?
        properties.push('invalid value for "received_currency", received_currency cannot be nil.')
      end

      properties.push('invalid value for "network_fee", network_fee cannot be nil.') if network_fee.nil?

      if network_fee_level.nil?
        properties.push('invalid value for "network_fee_level", network_fee_level cannot be nil.')
      end

      if !network_fee_level.nil? && !%w[fast average slow].include?(network_fee_level)
        properties.push('invalid value for network_fee_level, must be one of "fast", "average", "slow"')
      end

      properties.push('invalid value for "fee", fee cannot be nil.') if fee.nil?

      properties.push('invalid value for "fee_currency", fee_currency cannot be nil.') if fee_currency.nil?

      exchange&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"exchange\": #{prop}")
      end

      risk&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"risk\": #{prop}")
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
    # @return [Cryptopay::CoinWithdrawal] Returns the model itself
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
