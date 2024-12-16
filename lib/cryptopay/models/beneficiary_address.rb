# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class BeneficiaryAddress
    ENCODER = Encoder.new(
      name: 'Cryptopay::BeneficiaryAddress',
      attribute_map: {
        'country': :country,
        'city': :city,
        'line_1': :line_1,
        'line_2': :line_2,
        'post_code': :post_code
      },
      types: {
        'country': :String,
        'city': :String,
        'line_1': :String,
        'line_2': :String,
        'post_code': :String
      },
      nullables: []
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::BeneficiaryAddress] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # The 2-letter ISO country code of the address.
    def country
      @attributes[:country]
    end

    # The city of the address.
    def city
      @attributes[:city]
    end

    # First line of the address.
    def line_1
      @attributes[:line_1]
    end

    # Second line of the address.
    def line_2
      @attributes[:line_2]
    end

    # Postal code of the address.
    def post_code
      @attributes[:post_code]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "country", country cannot be nil.') if country.nil?

      if country.to_s.length > 2
        properties.push('invalid value for "country", the character length must be smaller than or equal to 2.')
      end

      if !city.nil? && city.to_s.length > 35
        properties.push('invalid value for "city", the character length must be smaller than or equal to 35.')
      end

      if !line_1.nil? && line_1.to_s.length > 70
        properties.push('invalid value for "line_1", the character length must be smaller than or equal to 70.')
      end

      if !line_2.nil? && line_2.to_s.length > 70
        properties.push('invalid value for "line_2", the character length must be smaller than or equal to 70.')
      end

      if !post_code.nil? && post_code.to_s.length > 16
        properties.push('invalid value for "post_code", the character length must be smaller than or equal to 16.')
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
