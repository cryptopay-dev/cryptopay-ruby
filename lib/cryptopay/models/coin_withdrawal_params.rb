# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class CoinWithdrawalParams
    ENCODER = Encoder.new(
      name: 'Cryptopay::CoinWithdrawalParams',
      attribute_map: {
        'address': :address,
        'charged_currency': :charged_currency,
        'received_currency': :received_currency,
        'network': :network,
        'charged_amount': :charged_amount,
        'charged_amount_to_send': :charged_amount_to_send,
        'received_amount': :received_amount,
        'custom_id': :custom_id,
        'customer_id': :customer_id,
        'network_fee_level': :network_fee_level,
        'force_commit': :force_commit,
        'travel_rule_compliant': :travel_rule_compliant,
        'beneficiary': :beneficiary
      },
      types: {
        'address': :String,
        'charged_currency': :String,
        'received_currency': :String,
        'network': :String,
        'charged_amount': :Decimal,
        'charged_amount_to_send': :Decimal,
        'received_amount': :Decimal,
        'custom_id': :String,
        'customer_id': :String,
        'network_fee_level': :NetworkFeeLevel,
        'force_commit': :Boolean,
        'travel_rule_compliant': :Boolean,
        'beneficiary': :Beneficiary
      },
      nullables: %i[
        charged_amount
        charged_amount_to_send
        received_amount
      ]
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::CoinWithdrawalParams] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # A recipient's cryptocurrency wallet address
    def address
      @attributes[:address]
    end

    # An account currency to send a transaction from
    def charged_currency
      @attributes[:charged_currency]
    end

    # Cryptocurrency type
    def received_currency
      @attributes[:received_currency]
    end

    # Cryptocurrency network
    def network
      @attributes[:network]
    end

    # The exact amount to debit from your account in `charged_currency`. All applicable fees will be deducted from this amount before processing a transaction instead of adding them on top it.
    def charged_amount
      @attributes[:charged_amount]
    end

    # The exact transaction amount to send in `charged_currency`. All applicable fees will be added on top of this amount and debited from your account.
    def charged_amount_to_send
      @attributes[:charged_amount_to_send]
    end

    # The exact transaction amount to send in `received_currency`. All applicable fees will be added on top of this amount and debited from your account.
    def received_amount
      @attributes[:received_amount]
    end

    # The payment reference ID in your system
    def custom_id
      @attributes[:custom_id]
    end

    # The internal ID of your customer that the wihdrawal relates to
    def customer_id
      @attributes[:customer_id]
    end

    def network_fee_level
      @attributes[:network_fee_level]
    end

    # Is `false` if omitted. Set `true` to turn off two-step withdrawal. Set `false` for two-step withdrawal and commit it within 30 seconds
    def force_commit
      @attributes[:force_commit]
    end

    # Is `false` if omitted. Set `true` to turn on beneficiary data validations
    def travel_rule_compliant
      @attributes[:travel_rule_compliant]
    end

    def beneficiary
      @attributes[:beneficiary]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "address", address cannot be nil.') if address.nil?

      properties.push('invalid value for "charged_currency", charged_currency cannot be nil.') if charged_currency.nil?

      if received_currency.nil?
        properties.push('invalid value for "received_currency", received_currency cannot be nil.')
      end

      if !network_fee_level.nil? && !%w[fast average slow].include?(network_fee_level)
        properties.push('invalid value for network_fee_level, must be one of "fast", "average", "slow"')
      end

      beneficiary&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"beneficiary\": #{prop}")
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
