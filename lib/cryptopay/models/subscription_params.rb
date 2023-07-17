# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class SubscriptionParams
    ENCODER = Encoder.new(
      name: 'Cryptopay::SubscriptionParams',
      attribute_map: {
        'name': :name,
        'amount': :amount,
        'currency': :currency,
        'period': :period,
        'period_quantity': :period_quantity,
        'starts_at': :starts_at,
        'payer_email': :payer_email,
        'payer_name': :payer_name,
        'custom_id': :custom_id,
        'product_name': :product_name,
        'product_description': :product_description,
        'success_redirect_url': :success_redirect_url,
        'unsuccess_redirect_url': :unsuccess_redirect_url
      },
      types: {
        'name': :String,
        'amount': :Decimal,
        'currency': :String,
        'period': :SubscriptionPeriod,
        'period_quantity': :Integer,
        'starts_at': :Time,
        'payer_email': :String,
        'payer_name': :String,
        'custom_id': :String,
        'product_name': :String,
        'product_description': :String,
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

    # Subscription name
    def name
      @attributes[:name]
    end

    # Subscription amount
    def amount
      @attributes[:amount]
    end

    # Subscription amount currency
    def currency
      @attributes[:currency]
    end

    def period
      @attributes[:period]
    end

    def period_quantity
      @attributes[:period_quantity]
    end

    def starts_at
      @attributes[:starts_at]
    end

    # Email of the payer
    def payer_email
      @attributes[:payer_email]
    end

    # Name of the payer
    def payer_name
      @attributes[:payer_name]
    end

    # Subscription reference ID in your system
    def custom_id
      @attributes[:custom_id]
    end

    def product_name
      @attributes[:product_name]
    end

    def product_description
      @attributes[:product_description]
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

      properties.push('invalid value for "name", name cannot be nil.') if name.nil?

      properties.push('invalid value for "amount", amount cannot be nil.') if amount.nil?

      properties.push('invalid value for "currency", currency cannot be nil.') if currency.nil?

      properties.push('invalid value for "period", period cannot be nil.') if period.nil?

      if !period.nil? && !%w[day week month year].include?(period)
        properties.push('invalid value for period, must be one of "day", "week", "month", "year"')
      end

      properties.push('invalid value for "period_quantity", period_quantity cannot be nil.') if period_quantity.nil?

      properties.push('invalid value for "starts_at", starts_at cannot be nil.') if starts_at.nil?

      properties.push('invalid value for "payer_email", payer_email cannot be nil.') if payer_email.nil?

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::SubscriptionParams] Returns the model itself
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
