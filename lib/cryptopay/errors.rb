# frozen_string_literal: true

module Cryptopay
  class Error < StandardError
    def self.from_response(res)
      case res.status
      when 400..499
        ClientError.from_response(res)
      when 500..599
        ServerError.from_response(res)
      end
    end
  end

  class ClientError < Error
    def self.from_response(res)
      new("Status #{res.status}: #{res.body}")
    end
  end

  class ServerError < Error
    def self.from_response(res)
      new("Status #{res.status}: #{res.body}")
    end
  end

  class ConnectionError < Error
  end

  class SignatureVerificationError < Error
  end
end
