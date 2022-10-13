# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class CoinWithdrawals
    def initialize(connection)
      @connection = connection
    end

    # Commit a withdrawal
    # @param coin_withdrawal_id [String] Coin withdrawal ID
    # @param [Hash] opts the optional parameters
    # @return [CoinWithdrawalResult]
    def commit(coin_withdrawal_id, _opts = {})
      path = '/api/coin_withdrawals/{coin_withdrawal_id}/commit'
      path = path.sub('{coin_withdrawal_id}', CGI.escape(coin_withdrawal_id.to_s))

      req = Request.new(
        method: :post,
        path: path
      )

      connection.call(req, return_type: CoinWithdrawalResult)
    end

    # Create a withdrawal
    # @param coin_withdrawal_params [CoinWithdrawalParams]
    # @param [Hash] opts the optional parameters
    # @return [CoinWithdrawalResult]
    def create(coin_withdrawal_params, _opts = {})
      path = '/api/coin_withdrawals'

      req = Request.new(
        method: :post,
        path: path,
        body_params: coin_withdrawal_params
      )

      connection.call(req, return_type: CoinWithdrawalResult)
    end

    # List withdrawals
    # @param [Hash] opts the optional parameters
    # @option opts [String] :customer_id The internal ID of your customer that the transaction relates to
    # @option opts [String] :starting_after Pagination parameter. ID to start after
    # @return [CoinWithdrawalListResult]
    def list(opts = {})
      path = '/api/coin_withdrawals'

      query_params = {}
      query_params[:customer_id] = opts[:customer_id] unless opts[:customer_id].nil?
      query_params[:starting_after] = opts[:starting_after] unless opts[:starting_after].nil?

      req = Request.new(
        method: :get,
        path: path,
        query_params: query_params
      )

      connection.call(req, return_type: CoinWithdrawalListResult)
    end

    # List network fees
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :all_networks Is &#x60;false&#x60; if omitted. Set &#x60;true&#x60; to return network fees for all cryptocurrency networks
    # @return [NetworkFeeListResult]
    def list_network_fees(opts = {})
      path = '/api/coin_withdrawals/network_fees'

      query_params = {}
      query_params[:all_networks] = opts[:all_networks] unless opts[:all_networks].nil?

      req = Request.new(
        method: :get,
        path: path,
        query_params: query_params
      )

      connection.call(req, return_type: NetworkFeeListResult)
    end

    # Retrieve a withdrawal
    # @param coin_withdrawal_id [String] Coin withdrawal ID
    # @param [Hash] opts the optional parameters
    # @return [CoinWithdrawalResult]
    def retrieve(coin_withdrawal_id, _opts = {})
      path = '/api/coin_withdrawals/{coin_withdrawal_id}'
      path = path.sub('{coin_withdrawal_id}', CGI.escape(coin_withdrawal_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: CoinWithdrawalResult)
    end

    # Retrieve a withdrawal by custom id
    # @param custom_id [String]
    # @param [Hash] opts the optional parameters
    # @return [CoinWithdrawalResult]
    def retrieve_by_custom_id(custom_id, _opts = {})
      path = '/api/coin_withdrawals/custom_id/{custom_id}'
      path = path.sub('{custom_id}', CGI.escape(custom_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: CoinWithdrawalResult)
    end

    private

    attr_reader :connection
  end
end
