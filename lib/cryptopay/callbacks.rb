# frozen_string_literal: true

module Cryptopay
  class Callbacks
    def initialize(secret)
      @secret = secret
    end

    # Verifies callback body and builds Callback object
    # @param body [String] Raw request body string
    # @param signature [String] Value of the X-Cryptopay-Signature header
    # @return [Object] Callback
    def verify(body, signature)
      expected_signature = OpenSSL::HMAC.hexdigest('SHA256', secret, body)

      equals = secure_compare(signature, expected_signature)
      raise(SignatureVerificationError, 'Signature mismatch') unless equals

      data = JSON.parse(body, symbolize_names: true)
      Callback.build_from_hash(data)
    end

    private

    attr_reader :secret

    # Constant-time comparison algorithm to prevent timing attacks
    def secure_compare(str1, str2)
      return false if str1.empty? || str2.empty? || str1.bytesize != str2.bytesize

      l = str1.unpack("C#{str1.bytesize}")

      res = 0
      str2.each_byte { |byte| res |= byte ^ l.shift }
      res.zero?
    end
  end
end
