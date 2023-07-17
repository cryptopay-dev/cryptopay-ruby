# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Transaction
    ENCODER = Encoder.new(
      name: 'Cryptopay::Transaction',
      attribute_map: {
        'id': :id,
        'custom_id': :custom_id,
        'customer_id': :customer_id,
        'amount': :amount,
        'currency': :currency,
        'balance': :balance,
        'fee': :fee,
        'fee_currency': :fee_currency,
        'reference_id': :reference_id,
        'reference_type': :reference_type,
        'description': :description,
        'status': :status,
        'status_context': :status_context,
        'risk': :risk,
        'created_at': :created_at
      },
      types: {
        'id': :String,
        'custom_id': :String,
        'customer_id': :String,
        'amount': :Decimal,
        'currency': :String,
        'balance': :Decimal,
        'fee': :Decimal,
        'fee_currency': :String,
        'reference_id': :String,
        'reference_type': :TransactionReferenceType,
        'description': :String,
        'status': :String,
        'status_context': :String,
        'risk': :Risk,
        'created_at': :Time
      },
      nullables: %i[
        custom_id
        customer_id
        description
        status
        status_context
      ]
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Transaction] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Account transaction ID
    def id
      @attributes[:id]
    end

    # Transaction description
    def custom_id
      @attributes[:custom_id]
    end

    # The reference ID of your customer
    def customer_id
      @attributes[:customer_id]
    end

    # Transaction amount
    def amount
      @attributes[:amount]
    end

    # Transaction currency
    def currency
      @attributes[:currency]
    end

    # Account subtotal
    def balance
      @attributes[:balance]
    end

    # Transaction fee details
    def fee
      @attributes[:fee]
    end

    # Transaction fee currency
    def fee_currency
      @attributes[:fee_currency]
    end

    # Transaction reference ID in Cryptopay
    def reference_id
      @attributes[:reference_id]
    end

    def reference_type
      @attributes[:reference_type]
    end

    # Transaction description
    def description
      @attributes[:description]
    end

    # Transaction status
    def status
      @attributes[:status]
    end

    # Transaction status context
    def status_context
      @attributes[:status_context]
    end

    def risk
      @attributes[:risk]
    end

    # Transaction creation date and time
    def created_at
      @attributes[:created_at]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "id", id cannot be nil.') if id.nil?

      properties.push('invalid value for "amount", amount cannot be nil.') if amount.nil?

      properties.push('invalid value for "currency", currency cannot be nil.') if currency.nil?

      properties.push('invalid value for "balance", balance cannot be nil.') if balance.nil?

      properties.push('invalid value for "reference_id", reference_id cannot be nil.') if reference_id.nil?

      properties.push('invalid value for "reference_type", reference_type cannot be nil.') if reference_type.nil?

      if !reference_type.nil? && !%w[BankDeposit BankWithdrawal ChannelPayment CoinDeposit CoinWithdrawal ExchangeTransfer Invoice InvoiceRefund ManualBalanceTransaction].include?(reference_type)
        properties.push('invalid value for reference_type, must be one of "BankDeposit", "BankWithdrawal", "ChannelPayment", "CoinDeposit", "CoinWithdrawal", "ExchangeTransfer", "Invoice", "InvoiceRefund", "ManualBalanceTransaction"')
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
