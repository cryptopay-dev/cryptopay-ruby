# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Invoice
    ENCODER = Encoder.new(
      name: 'Cryptopay::Invoice',
      attribute_map: {
        'id': :id,
        'custom_id': :custom_id,
        'customer_id': :customer_id,
        'status': :status,
        'status_context': :status_context,
        'address': :address,
        'network': :network,
        'uri': :uri,
        'price_amount': :price_amount,
        'price_currency': :price_currency,
        'fee': :fee,
        'fee_currency': :fee_currency,
        'pay_amount': :pay_amount,
        'pay_currency': :pay_currency,
        'paid_amount': :paid_amount,
        'exchange': :exchange,
        'transactions': :transactions,
        'name': :name,
        'description': :description,
        'metadata': :metadata,
        'success_redirect_url': :success_redirect_url,
        'unsuccess_redirect_url': :unsuccess_redirect_url,
        'hosted_page_url': :hosted_page_url,
        'created_at': :created_at,
        'expires_at': :expires_at
      },
      types: {
        'id': :String,
        'custom_id': :String,
        'customer_id': :String,
        'status': :InvoiceStatus,
        'status_context': :InvoiceStatusContext,
        'address': :String,
        'network': :String,
        'uri': :String,
        'price_amount': :Decimal,
        'price_currency': :String,
        'fee': :Decimal,
        'fee_currency': :String,
        'pay_amount': :Decimal,
        'pay_currency': :String,
        'paid_amount': :Decimal,
        'exchange': :Exchange,
        'transactions': :'Array<InvoiceTransaction>',
        'name': :String,
        'description': :String,
        'metadata': :'Hash<String, String>',
        'success_redirect_url': :String,
        'unsuccess_redirect_url': :String,
        'hosted_page_url': :String,
        'created_at': :Time,
        'expires_at': :Time
      },
      nullables: %i[
        custom_id
        customer_id
        status_context
        name
        description
        metadata
        success_redirect_url
        unsuccess_redirect_url
      ]
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Invoice ID
    def id
      @attributes[:id]
    end

    # Invoice reference ID in your system
    def custom_id
      @attributes[:custom_id]
    end

    # The internal ID of your customer that the invoice relates to
    def customer_id
      @attributes[:customer_id]
    end

    def status
      @attributes[:status]
    end

    def status_context
      @attributes[:status_context]
    end

    # Invoice cryptocurrency address
    def address
      @attributes[:address]
    end

    # Cryptocurrency network
    def network
      @attributes[:network]
    end

    # Invoice URI. May be used for generating a QR code
    def uri
      @attributes[:uri]
    end

    # Invoice amount
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

    # Cryptocurrency amount to pay
    def pay_amount
      @attributes[:pay_amount]
    end

    # Cryptocurrency type
    def pay_currency
      @attributes[:pay_currency]
    end

    # which amount already paid
    def paid_amount
      @attributes[:paid_amount]
    end

    def exchange
      @attributes[:exchange]
    end

    def transactions
      @attributes[:transactions]
    end

    # Invoice name
    def name
      @attributes[:name]
    end

    # Invoice description
    def description
      @attributes[:description]
    end

    # Key-value data
    def metadata
      @attributes[:metadata]
    end

    # URL that a customer will be redirected to upon transaction confirmation
    def success_redirect_url
      @attributes[:success_redirect_url]
    end

    def unsuccess_redirect_url
      @attributes[:unsuccess_redirect_url]
    end

    # Invoice hosted page that renders invoice details
    def hosted_page_url
      @attributes[:hosted_page_url]
    end

    # Invoice creation date and time
    def created_at
      @attributes[:created_at]
    end

    # Invoice expiration date and time
    def expires_at
      @attributes[:expires_at]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "id", id cannot be nil.') if id.nil?

      properties.push('invalid value for "status", status cannot be nil.') if status.nil?

      if !status.nil? && !%w[new completed unresolved refunded cancelled].include?(status)
        properties.push('invalid value for status, must be one of "new", "completed", "unresolved", "refunded", "cancelled"')
      end

      if !status_context.nil? && !%w[overpaid underpaid paid_late illicit_resource].include?(status_context)
        properties.push('invalid value for status_context, must be one of "overpaid", "underpaid", "paid_late", "illicit_resource"')
      end

      properties.push('invalid value for "address", address cannot be nil.') if address.nil?

      properties.push('invalid value for "network", network cannot be nil.') if network.nil?

      properties.push('invalid value for "uri", uri cannot be nil.') if uri.nil?

      properties.push('invalid value for "price_amount", price_amount cannot be nil.') if price_amount.nil?

      properties.push('invalid value for "price_currency", price_currency cannot be nil.') if price_currency.nil?

      properties.push('invalid value for "fee", fee cannot be nil.') if fee.nil?

      properties.push('invalid value for "fee_currency", fee_currency cannot be nil.') if fee_currency.nil?

      properties.push('invalid value for "pay_amount", pay_amount cannot be nil.') if pay_amount.nil?

      properties.push('invalid value for "pay_currency", pay_currency cannot be nil.') if pay_currency.nil?

      properties.push('invalid value for "paid_amount", paid_amount cannot be nil.') if paid_amount.nil?

      exchange&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"exchange\": #{prop}")
      end

      properties.push('invalid value for "transactions", transactions cannot be nil.') if transactions.nil?

      transactions&.each_with_index do |item, index|
        item.invalid_properties.each do |prop|
          properties.push("invalid value for \"transactions.#{index}\": #{prop}")
        end
      end

      properties.push('invalid value for "hosted_page_url", hosted_page_url cannot be nil.') if hosted_page_url.nil?

      properties.push('invalid value for "created_at", created_at cannot be nil.') if created_at.nil?

      properties.push('invalid value for "expires_at", expires_at cannot be nil.') if expires_at.nil?

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Invoice] Returns the model itself
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
