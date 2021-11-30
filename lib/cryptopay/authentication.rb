# frozen_string_literal: true

module Cryptopay
  class Authentication
    def initialize(api_key:, api_secret:)
      @api_key = api_key
      @api_secret = api_secret
    end

    def sign(request)
      signature_string = [
        request.method.to_s.upcase,
        request.body.nil? ? '' : Digest::MD5.hexdigest(request.body),
        request.content_type,
        request.date,
        request.path
      ].join("\n")

      signature = Base64.strict_encode64(OpenSSL::HMAC.digest('sha1', api_secret, signature_string))

      request.add_header('Authorization', "HMAC #{api_key}:#{signature}")

      request
    end

    private

    attr_reader :api_key, :api_secret
  end
end
