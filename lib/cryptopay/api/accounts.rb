# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Accounts
    def initialize(connection)
      @connection = connection
    end

    # List accounts
    # @param [Hash] opts the optional parameters
    # @return [AccountListResult]
    def list(_opts = {})
      path = '/api/accounts'

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: AccountListResult)
    end

    # List account transactions
    # @param account_id [String] Account ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :starting_after Pagination parameter. ID to start after
    # @return [TransactionListResult]
    def list_transactions(account_id, opts = {})
      path = '/api/accounts/{account_id}/transactions'
      path = path.sub('{account_id}', CGI.escape(account_id.to_s))

      query_params = {}
      query_params[:starting_after] = opts[:starting_after] unless opts[:starting_after].nil?

      req = Request.new(
        method: :get,
        path: path,
        query_params: query_params
      )

      connection.call(req, return_type: TransactionListResult)
    end

    private

    attr_reader :connection
  end
end
