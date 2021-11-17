# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Transactions
    def initialize(connection)
      @connection = connection
    end

    # List transactions
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :created_at_from Date and time in iso8601 format
    # @option opts [Time] :created_at_to Date and time in iso8601 format
    # @option opts [TransactionReferenceType] :reference_type Transaction reference type
    # @option opts [String] :currency Transaction currency
    # @option opts [String] :status Transaction status
    # @option opts [RiskLevel] :risk_level Transaction risk level
    # @option opts [String] :starting_after Pagination parameter. ID to start after
    # @return [TransactionListResult]
    def list(opts = {})
      path = '/api/transactions'

      query_params = {}
      query_params[:created_at_from] = opts[:created_at_from] unless opts[:created_at_from].nil?
      query_params[:created_at_to] = opts[:created_at_to] unless opts[:created_at_to].nil?
      query_params[:reference_type] = opts[:reference_type] unless opts[:reference_type].nil?
      query_params[:currency] = opts[:currency] unless opts[:currency].nil?
      query_params[:status] = opts[:status] unless opts[:status].nil?
      query_params[:risk_level] = opts[:risk_level] unless opts[:risk_level].nil?
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
