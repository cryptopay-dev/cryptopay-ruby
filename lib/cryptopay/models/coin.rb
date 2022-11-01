# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Coin
    ENCODER = Encoder.new(
      name: 'Cryptopay::Coin',
      attribute_map: {
        'currency': :currency,
        'name': :name,
        'logo_url': :logo_url,
        'networks': :networks
      },
      types: {
        'currency': :String,
        'name': :String,
        'logo_url': :String,
        'networks': :'Array<CoinNetwork>'
      },
      nullables: []
    )
    private_constant :ENCODER

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    def currency
      @attributes[:currency]
    end

    def name
      @attributes[:name]
    end

    def logo_url
      @attributes[:logo_url]
    end

    def networks
      @attributes[:networks]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "currency", currency cannot be nil.') if currency.nil?

      properties.push('invalid value for "name", name cannot be nil.') if name.nil?

      properties.push('invalid value for "logo_url", logo_url cannot be nil.') if logo_url.nil?

      properties.push('invalid value for "networks", networks cannot be nil.') if networks.nil?

      networks&.each_with_index do |item, index|
        item.invalid_properties.each do |prop|
          properties.push("invalid value for \"networks.#{index}\": #{prop}")
        end
      end

      properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invalid_properties.empty?
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Coin] Returns the model itself
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
