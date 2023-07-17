# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Subscription
    ENCODER = Encoder.new(
      name: 'Cryptopay::Subscription',
      attribute_map: {
        'id': :id,
        'status': :status,
        'custom_id': :custom_id,
        'name': :name,
        'amount': :amount,
        'currency': :currency,
        'period': :period,
        'period_quantity': :period_quantity,
        'current_period_starts_at': :current_period_starts_at,
        'current_period_ends_at': :current_period_ends_at,
        'current_period_paid': :current_period_paid,
        'payer_email': :payer_email,
        'payer_name': :payer_name,
        'product_name': :product_name,
        'product_description': :product_description,
        'success_redirect_url': :success_redirect_url,
        'unsuccess_redirect_url': :unsuccess_redirect_url,
        'created_at': :created_at,
        'cancelled_at': :cancelled_at
      },
      types: {
        'id': :String,
        'status': :SubscriptionStatus,
        'custom_id': :String,
        'name': :String,
        'amount': :Decimal,
        'currency': :String,
        'period': :SubscriptionPeriod,
        'period_quantity': :Integer,
        'current_period_starts_at': :Time,
        'current_period_ends_at': :Time,
        'current_period_paid': :Boolean,
        'payer_email': :String,
        'payer_name': :String,
        'product_name': :String,
        'product_description': :String,
        'success_redirect_url': :String,
        'unsuccess_redirect_url': :String,
        'created_at': :Time,
        'cancelled_at': :Time
      },
      nullables: %i[
        custom_id
        payer_name
        product_name
        product_description
        success_redirect_url
        unsuccess_redirect_url
        cancelled_at
      ]
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Subscription] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Subscription ID
    def id
      @attributes[:id]
    end

    def status
      @attributes[:status]
    end

    # Subscription reference ID in your system
    def custom_id
      @attributes[:custom_id]
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

    def current_period_starts_at
      @attributes[:current_period_starts_at]
    end

    def current_period_ends_at
      @attributes[:current_period_ends_at]
    end

    def current_period_paid
      @attributes[:current_period_paid]
    end

    def payer_email
      @attributes[:payer_email]
    end

    def payer_name
      @attributes[:payer_name]
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

    def created_at
      @attributes[:created_at]
    end

    def cancelled_at
      @attributes[:cancelled_at]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "id", id cannot be nil.') if id.nil?

      properties.push('invalid value for "status", status cannot be nil.') if status.nil?

      if !status.nil? && !%w[active cancelled].include?(status)
        properties.push('invalid value for status, must be one of "active", "cancelled"')
      end

      properties.push('invalid value for "name", name cannot be nil.') if name.nil?

      properties.push('invalid value for "amount", amount cannot be nil.') if amount.nil?

      properties.push('invalid value for "currency", currency cannot be nil.') if currency.nil?

      properties.push('invalid value for "period", period cannot be nil.') if period.nil?

      if !period.nil? && !%w[day week month year].include?(period)
        properties.push('invalid value for period, must be one of "day", "week", "month", "year"')
      end

      properties.push('invalid value for "period_quantity", period_quantity cannot be nil.') if period_quantity.nil?

      if current_period_starts_at.nil?
        properties.push('invalid value for "current_period_starts_at", current_period_starts_at cannot be nil.')
      end

      if current_period_ends_at.nil?
        properties.push('invalid value for "current_period_ends_at", current_period_ends_at cannot be nil.')
      end

      if current_period_paid.nil?
        properties.push('invalid value for "current_period_paid", current_period_paid cannot be nil.')
      end

      properties.push('invalid value for "payer_email", payer_email cannot be nil.') if payer_email.nil?

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
