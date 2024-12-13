# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  # Beneficiary information.
  class Beneficiary
    ENCODER = Encoder.new(
      name: 'Cryptopay::Beneficiary',
      attribute_map: {
        'type': :type,
        'name': :name,
        'address': :address
      },
      types: {
        'type': :BeneficiaryType,
        'name': :String,
        'address': :BeneficiaryAddress
      },
      nullables: []
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Beneficiary] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    def type
      @attributes[:type]
    end

    # The registered name of the company for a `legal_person` or the full name for a `natural_person`.
    def name
      @attributes[:name]
    end

    def address
      @attributes[:address]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "type", type cannot be nil.') if type.nil?

      if !type.nil? && !%w[natural_person legal_person].include?(type)
        properties.push('invalid value for type, must be one of "natural_person", "legal_person"')
      end

      properties.push('invalid value for "name", name cannot be nil.') if name.nil?

      if name.to_s.length > 100
        properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/^[a-zA-Z0-9\s-]+$/)
      properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.") if name !~ pattern

      properties.push('invalid value for "address", address cannot be nil.') if address.nil?

      address&.invalid_properties&.each do |prop|
        properties.push("invalid value for \"address\": #{prop}")
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
