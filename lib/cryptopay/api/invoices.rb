# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Invoices
    def initialize(connection)
      @connection = connection
    end

    # Commit invoice recalculation
    # This endpoint allows you to commit invoice recalculation.
    # @param invoice_id [String] Invoice ID
    # @param recalculation_id [String] Recalculation ID
    # @param [Hash] opts the optional parameters
    # @return [InvoiceRecalculationResult]
    def commit_recalculation(invoice_id, recalculation_id, _opts = {})
      path = '/api/invoices/{invoice_id}/recalculations/{recalculation_id}/commit'
      path = path.sub('{invoice_id}', CGI.escape(invoice_id.to_s))
      path = path.sub('{recalculation_id}', CGI.escape(recalculation_id.to_s))

      req = Request.new(
        method: :post,
        path: path
      )

      connection.call(req, return_type: InvoiceRecalculationResult)
    end

    # Create an invoice
    # This endpoint allows you to create invoices.
    # @param invoice_params [InvoiceParams]
    # @param [Hash] opts the optional parameters
    # @return [InvoiceResult]
    def create(invoice_params, _opts = {})
      path = '/api/invoices'

      req = Request.new(
        method: :post,
        path: path,
        body_params: invoice_params
      )

      connection.call(req, return_type: InvoiceResult)
    end

    # Create invoice recalculation
    # This endpoint allows you to recalculate invoices.
    # @param invoice_id [String] Invoice ID
    # @param invoice_recalculation_params [InvoiceRecalculationParams]
    # @param [Hash] opts the optional parameters
    # @return [InvoiceRecalculationResult]
    def create_recalculation(invoice_id, invoice_recalculation_params, _opts = {})
      path = '/api/invoices/{invoice_id}/recalculations'
      path = path.sub('{invoice_id}', CGI.escape(invoice_id.to_s))

      req = Request.new(
        method: :post,
        path: path,
        body_params: invoice_recalculation_params
      )

      connection.call(req, return_type: InvoiceRecalculationResult)
    end

    # Create invoice refund
    # This endpoint allows you to create invoice refunds.
    # @param invoice_id [String] Invoice ID
    # @param invoice_refund_params [InvoiceRefundParams]
    # @param [Hash] opts the optional parameters
    # @return [InvoiceRefundResult]
    def create_refund(invoice_id, invoice_refund_params, _opts = {})
      path = '/api/invoices/{invoice_id}/refunds'
      path = path.sub('{invoice_id}', CGI.escape(invoice_id.to_s))

      req = Request.new(
        method: :post,
        path: path,
        body_params: invoice_refund_params
      )

      connection.call(req, return_type: InvoiceRefundResult)
    end

    # List invoices
    # This endpoint allows you to retrieve a list of all invoices.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :customer_id The internal ID of your customer that the transaction relates to
    # @option opts [String] :starting_after Pagination parameter. ID to start after
    # @option opts [String] :subscription_id
    # @return [InvoiceListResult]
    def list(opts = {})
      path = '/api/invoices'

      query_params = {}
      query_params[:customer_id] = opts[:customer_id] unless opts[:customer_id].nil?
      query_params[:starting_after] = opts[:starting_after] unless opts[:starting_after].nil?
      query_params[:subscription_id] = opts[:subscription_id] unless opts[:subscription_id].nil?

      req = Request.new(
        method: :get,
        path: path,
        query_params: query_params
      )

      connection.call(req, return_type: InvoiceListResult)
    end

    # List invoice refunds
    # This endpoint allows you to retrieve a list of a particular invoice refunds.
    # @param invoice_id [String] Invoice ID
    # @param [Hash] opts the optional parameters
    # @return [InvoiceRefundListResult]
    def list_refunds(invoice_id, _opts = {})
      path = '/api/invoices/{invoice_id}/refunds'
      path = path.sub('{invoice_id}', CGI.escape(invoice_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: InvoiceRefundListResult)
    end

    # Retrieve an invoice
    # This endpoint allows you to retrieve the invoice details.
    # @param invoice_id [String] Invoice ID
    # @param [Hash] opts the optional parameters
    # @return [InvoiceResult]
    def retrieve(invoice_id, _opts = {})
      path = '/api/invoices/{invoice_id}'
      path = path.sub('{invoice_id}', CGI.escape(invoice_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: InvoiceResult)
    end

    # Retrieve an invoice by custom_id
    # This endpoint allows you to retrieve invoice details by its custom_id.
    # @param custom_id [String]
    # @param [Hash] opts the optional parameters
    # @return [InvoiceResult]
    def retrieve_by_custom_id(custom_id, _opts = {})
      path = '/api/invoices/custom_id/{custom_id}'
      path = path.sub('{custom_id}', CGI.escape(custom_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: InvoiceResult)
    end

    private

    attr_reader :connection
  end
end
