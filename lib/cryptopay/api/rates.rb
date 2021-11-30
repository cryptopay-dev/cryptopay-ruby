# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Rates
    def initialize(connection)
      @connection = connection
    end

    # Retrieve all rates
    # This endpoint allows you to retrieve all public rates.
    # @param [Hash] opts the optional parameters
    # @return [RatesResult]
    def all(_opts = {})
      path = '/api/rates'

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: RatesResult)
    end

    # Retrieve a pair rate
    # This endpoint allows you to retrieve a public rate by currency pair.
    # @param base_currency [String] Base currency of pair
    # @param quote_currency [String] Quote currency of pair
    # @param [Hash] opts the optional parameters
    # @return [RateResult]
    def retrieve(base_currency, quote_currency, _opts = {})
      path = '/api/rates/{base_currency}/{quote_currency}'
      path = path.sub('{base_currency}', CGI.escape(base_currency.to_s))
      path = path.sub('{quote_currency}', CGI.escape(quote_currency.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: RateResult)
    end

    private

    attr_reader :connection
  end
end
