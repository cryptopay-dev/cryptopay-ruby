# frozen_string_literal: true

module Cryptopay
  class Config
    # Cryptopay API Base URL
    attr_accessor :api_url

    # Cryptopay API Key
    attr_accessor :api_key

    # Cryptopay API Secret
    attr_accessor :api_secret

    # Cryptopay callback secret
    attr_accessor :callback_secret

    # Optional proc yeilding the Faraday builder
    attr_accessor :faraday_builder

    # The Faraday adapter to be used. Net::HTTP by default
    attr_accessor :faraday_adapter

    def initialize
      yield(self)

      validate!
    end

    private

    def validate!
      errors = validate
      return if errors.empty?

      raise(ArgumentError, errors.join("\n"))
    end

    def validate
      errors = []

      errors << 'Missing "api_url" in Cryptopay config' if api_url.nil?
      errors << 'Missing "api_key" in Cryptopay config' if api_key.nil?
      errors << 'Missing "api_secret" in Cryptopay config' if api_secret.nil?

      errors
    end
  end
end
