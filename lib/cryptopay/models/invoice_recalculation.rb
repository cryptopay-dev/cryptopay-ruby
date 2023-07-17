# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class InvoiceRecalculation
    ENCODER = Encoder.new(
      name: 'Cryptopay::InvoiceRecalculation',
      attribute_map: {
        'id': :id,
        'invoice_id': :invoice_id,
        'pay_amount': :pay_amount,
        'pay_currency': :pay_currency,
        'price_amount': :price_amount,
        'price_currency': :price_currency,
        'fee': :fee,
        'fee_currency': :fee_currency,
        'previous_pay_amount': :previous_pay_amount,
        'previous_price_amount': :previous_price_amount,
        'previous_exchange_rate': :previous_exchange_rate,
        'exchange': :exchange,
        'created_at': :created_at
      },
      types: {
        'id': :String,
        'invoice_id': :String,
        'pay_amount': :Decimal,
        'pay_currency': :String,
        'price_amount': :Decimal,
        'price_currency': :String,
        'fee': :String,
        'fee_currency': :String,
        'previous_pay_amount': :Decimal,
        'previous_price_amount': :Decimal,
        'previous_exchange_rate': :Decimal,
        'exchange': :Exchange,
        'created_at': :Time
      },
      nullables: [
        :previous_exchange_rate
      ]
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::InvoiceRecalculation] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Recalculation ID
    def id
      @attributes[:id]
    end

    # Invoice ID
    def invoice_id
      @attributes[:invoice_id]
    end

    # Cryptocurrency amount received
    def pay_amount
      @attributes[:pay_amount]
    end

    # Cryptocurrency type
    def pay_currency
      @attributes[:pay_currency]
    end

    # New invoice amount
    def price_amount
      @attributes[:price_amount]
    end

    # Invoice amount currency
    def price_currency
      @attributes[:price_currency]
    end

    # Processing fee
    def fee
      @attributes[:fee]
    end

    # Processing fee currency
    def fee_currency
      @attributes[:fee_currency]
    end

    # Previous amount to pay
    def previous_pay_amount
      @attributes[:previous_pay_amount]
    end

    # Previous invoice amount
    def previous_price_amount
      @attributes[:previous_price_amount]
    end

    # Previous exchange rate
    def previous_exchange_rate
      @attributes[:previous_exchange_rate]
    end

    def exchange
      @attributes[:exchange]
    end

    # Recalculation creation date and time
    def created_at
      @attributes[:created_at]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "id", id cannot be nil.') if id.nil?

      properties.push('invalid value for "invoice_id", invoice_id cannot be nil.') if invoice_id.nil?

      properties.push('invalid value for "pay_amount", pay_amount cannot be nil.') if pay_amount.nil?

      properties.push('invalid value for "pay_currency", pay_currency cannot be nil.') if pay_currency.nil?

      properties.push('invalid value for "price_amount", price_amount cannot be nil.') if price_amount.nil?

      properties.push('invalid value for "price_currency", price_currency cannot be nil.') if price_currency.nil?

      properties.push('invalid value for "fee", fee cannot be nil.') if fee.nil?

      properties.push('invalid value for "fee_currency", fee_currency cannot be nil.') if fee_currency.nil?

      if previous_pay_amount.nil?
        properties.push('invalid value for "previous_pay_amount", previous_pay_amount cannot be nil.')
      end

      if previous_price_amount.nil?
        properties.push('invalid value for "previous_price_amount", previous_price_amount cannot be nil.')
      end

      exchange&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"exchange\": #{prop}")
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
