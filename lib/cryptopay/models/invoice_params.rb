# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class InvoiceParams
    ENCODER = Encoder.new(
      name: 'Cryptopay::InvoiceParams',
      attribute_map: {
        'price_amount': :price_amount,
        'price_currency': :price_currency,
        'pay_currency': :pay_currency,
        'custom_id': :custom_id,
        'customer_id': :customer_id,
        'name': :name,
        'description': :description,
        'metadata': :metadata,
        'success_redirect_url': :success_redirect_url,
        'unsuccess_redirect_url': :unsuccess_redirect_url
      },
      types: {
        'price_amount': :Decimal,
        'price_currency': :String,
        'pay_currency': :String,
        'custom_id': :String,
        'customer_id': :String,
        'name': :String,
        'description': :String,
        'metadata': :'Hash<String, String>',
        'success_redirect_url': :String,
        'unsuccess_redirect_url': :String
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # The invoice amount
    def price_amount
      @attributes[:price_amount]
    end

    # The invoice amount currency
    def price_currency
      @attributes[:price_currency]
    end

    # The cryptocurrency that the invoice must be paid in
    def pay_currency
      @attributes[:pay_currency]
    end

    # The payment reference ID in your system
    def custom_id
      @attributes[:custom_id]
    end

    # The internal ID of your customer that the invoice relates to. See Customers for more information
    def customer_id
      @attributes[:customer_id]
    end

    # The invoice name
    def name
      @attributes[:name]
    end

    # The invoice description
    def description
      @attributes[:description]
    end

    # Custom key-valued data
    def metadata
      @attributes[:metadata]
    end

    # The URL that the customer will be redirected to upon transaction confirmation
    def success_redirect_url
      @attributes[:success_redirect_url]
    end

    def unsuccess_redirect_url
      @attributes[:unsuccess_redirect_url]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "price_amount", price_amount cannot be nil.') if price_amount.nil?

      properties.push('invalid value for "price_currency", price_currency cannot be nil.') if price_currency.nil?

      properties.push('invalid value for "pay_currency", pay_currency cannot be nil.') if pay_currency.nil?

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::InvoiceParams] Returns the model itself
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
