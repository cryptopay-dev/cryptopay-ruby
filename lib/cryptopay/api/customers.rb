# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Customers
    def initialize(connection)
      @connection = connection
    end

    # Create a customer
    # @param customer_params [CustomerParams]
    # @param [Hash] opts the optional parameters
    # @return [CustomerResult]
    def create(customer_params, _opts = {})
      path = '/api/customers'

      req = Request.new(
        method: :post,
        path: path,
        body_params: customer_params
      )

      connection.call(req, return_type: CustomerResult)
    end

    # List customers
    # @param [Hash] opts the optional parameters
    # @option opts [String] :starting_after Pagination parameter. ID to start after
    # @return [CustomerListResult]
    def list(opts = {})
      path = '/api/customers'

      query_params = {}
      query_params[:starting_after] = opts[:starting_after] unless opts[:starting_after].nil?

      req = Request.new(
        method: :get,
        path: path,
        query_params: query_params
      )

      connection.call(req, return_type: CustomerListResult)
    end

    # Retrieve a customer
    # @param customer_id [String] The customer&#39;s reference ID in your system
    # @param [Hash] opts the optional parameters
    # @return [CustomerResult]
    def retrieve(customer_id, _opts = {})
      path = '/api/customers/{customer_id}'
      path = path.sub('{customer_id}', CGI.escape(customer_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: CustomerResult)
    end

    # Update a customer
    # @param customer_id [String] The customer&#39;s reference ID in your system
    # @param customer_update_params [CustomerUpdateParams]
    # @param [Hash] opts the optional parameters
    # @return [CustomerResult]
    def update(customer_id, customer_update_params, _opts = {})
      path = '/api/customers/{customer_id}'
      path = path.sub('{customer_id}', CGI.escape(customer_id.to_s))

      req = Request.new(
        method: :patch,
        path: path,
        body_params: customer_update_params
      )

      connection.call(req, return_type: CustomerResult)
    end

    private

    attr_reader :connection
  end
end
