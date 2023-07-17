# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  # Transaction risk level details
  class Risk
    ENCODER = Encoder.new(
      name: 'Cryptopay::Risk',
      attribute_map: {
        'score': :score,
        'level': :level,
        'resource_name': :resource_name,
        'resource_category': :resource_category
      },
      types: {
        'score': :Float,
        'level': :RiskLevel,
        'resource_name': :String,
        'resource_category': :String
      },
      nullables: []
    )
    private_constant :ENCODER

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Cryptopay::Risk] Returns the model itself
    def self.build_from_hash(data)
      attributes = ENCODER.build_from_hash(data)
      new(attributes)
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      @attributes = ENCODER.sanitize(attributes)
    end

    # Transaction risk score
    def score
      @attributes[:score]
    end

    def level
      @attributes[:level]
    end

    # A resource name the transaction has been received from
    def resource_name
      @attributes[:resource_name]
    end

    # A resource category the transaction has been received from
    def resource_category
      @attributes[:resource_category]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def invalid_properties
      properties = []

      properties.push('invalid value for "score", score cannot be nil.') if score.nil?

      properties.push('invalid value for "level", level cannot be nil.') if level.nil?

      if !level.nil? && !%w[low medium high].include?(level)
        properties.push('invalid value for level, must be one of "low", "medium", "high"')
      end

      properties.push('invalid value for "resource_name", resource_name cannot be nil.') if resource_name.nil?

      if resource_category.nil?
        properties.push('invalid value for "resource_category", resource_category cannot be nil.')
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
