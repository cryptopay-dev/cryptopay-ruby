# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Coins
    def initialize(connection)
      @connection = connection
    end

    # List supported coins
    # @param [Hash] opts the optional parameters
    # @return [CoinListResult]
    def list(_opts = {})
      path = '/api/coins'

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: CoinListResult)
    end

    private

    attr_reader :connection
  end
end
