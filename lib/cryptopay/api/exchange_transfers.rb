# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class ExchangeTransfers
    def initialize(connection)
      @connection = connection
    end

    # Commit an exchange transfer
    # @param exchange_transfer_id [String] Exchange transfer ID
    # @param [Hash] opts the optional parameters
    # @return [ExchangeTransferResult]
    def commit(exchange_transfer_id, _opts = {})
      path = '/api/exchange_transfers/{exchange_transfer_id}/commit'
      path = path.sub('{exchange_transfer_id}', CGI.escape(exchange_transfer_id.to_s))

      req = Request.new(
        method: :post,
        path: path
      )

      connection.call(req, return_type: ExchangeTransferResult)
    end

    # Create an exchange transfer
    # @param exchange_transfer_params [ExchangeTransferParams]
    # @param [Hash] opts the optional parameters
    # @return [ExchangeTransferResult]
    def create(exchange_transfer_params, _opts = {})
      path = '/api/exchange_transfers'

      req = Request.new(
        method: :post,
        path: path,
        body_params: exchange_transfer_params
      )

      connection.call(req, return_type: ExchangeTransferResult)
    end

    # Retrieve an exchange transfer
    # @param exchange_transfer_id [String] Exchange transfer ID
    # @param [Hash] opts the optional parameters
    # @return [ExchangeTransferResult]
    def retrieve(exchange_transfer_id, _opts = {})
      path = '/api/exchange_transfers/{exchange_transfer_id}'
      path = path.sub('{exchange_transfer_id}', CGI.escape(exchange_transfer_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: ExchangeTransferResult)
    end

    private

    attr_reader :connection
  end
end
