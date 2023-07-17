# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class InvoiceRefund
    ENCODER = Encoder.new(
      name: 'Cryptopay::InvoiceRefund',
      attribute_map: {
        'id': :id,
        'invoice_id': :invoice_id,
        'custom_id': :custom_id,
        'amount': :amount,
        'amount_currency': :amount_currency,
        'fee': :fee,
        'fee_currency': :fee_currency,
        'address': :address,
        'network': :network,
        'txid': :txid,
        'risk': :risk,
        'created_at': :created_at
      },
      types: {
        'id': :String,
        'invoice_id': :String,
        'custom_id': :String,
        'amount': :Decimal,
        'amount_currency': :String,
        'fee': :Decimal,
        'fee_currency': :String,
        'address': :String,
        'network': :String,
        'txid': :String,
        'risk': :Risk,
        'created_at': :Time
      },
      nullables: %i[
        custom_id
        address
        txid
      ]
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::InvoiceRefund] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Refund ID
    def id
      @attributes[:id]
    end

    # Invoice ID
    def invoice_id
      @attributes[:invoice_id]
    end

    # Refund `custom_id`. The value is being inherited from the parent invoice
    def custom_id
      @attributes[:custom_id]
    end

    # Refund amount
    def amount
      @attributes[:amount]
    end

    # Refund currency
    def amount_currency
      @attributes[:amount_currency]
    end

    # Processing fee
    def fee
      @attributes[:fee]
    end

    # Processing fee currency
    def fee_currency
      @attributes[:fee_currency]
    end

    # Cryptocurrency address the refund transaction sent to
    def address
      @attributes[:address]
    end

    # Cryptocurrency network
    def network
      @attributes[:network]
    end

    # Cryptocurrency transaction ID on the blockchain
    def txid
      @attributes[:txid]
    end

    def risk
      @attributes[:risk]
    end

    # Refund transaction creation date and time
    def created_at
      @attributes[:created_at]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "id", id cannot be nil.') if id.nil?

      properties.push('invalid value for "invoice_id", invoice_id cannot be nil.') if invoice_id.nil?

      properties.push('invalid value for "amount", amount cannot be nil.') if amount.nil?

      properties.push('invalid value for "amount_currency", amount_currency cannot be nil.') if amount_currency.nil?

      properties.push('invalid value for "fee", fee cannot be nil.') if fee.nil?

      properties.push('invalid value for "fee_currency", fee_currency cannot be nil.') if fee_currency.nil?

      properties.push('invalid value for "network", network cannot be nil.') if network.nil?

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
