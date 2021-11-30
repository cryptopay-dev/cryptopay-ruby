# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Channels
    def initialize(connection)
      @connection = connection
    end

    # Create a channel
    # @param channel_params [ChannelParams]
    # @param [Hash] opts the optional parameters
    # @return [ChannelResult]
    def create(channel_params, _opts = {})
      path = '/api/channels'

      req = Request.new(
        method: :post,
        path: path,
        body_params: channel_params
      )

      connection.call(req, return_type: ChannelResult)
    end

    # List channels
    # @param [Hash] opts the optional parameters
    # @option opts [String] :customer_id The internal ID of your customer that the transaction relates to
    # @option opts [String] :starting_after Pagination parameter. ID to start after
    # @return [ChannelListResult]
    def list(opts = {})
      path = '/api/channels'

      query_params = {}
      query_params[:customer_id] = opts[:customer_id] unless opts[:customer_id].nil?
      query_params[:starting_after] = opts[:starting_after] unless opts[:starting_after].nil?

      req = Request.new(
        method: :get,
        path: path,
        query_params: query_params
      )

      connection.call(req, return_type: ChannelListResult)
    end

    # List channel payments
    # @param channel_id [String] Channel ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :starting_after Pagination parameter. ID to start after
    # @return [ChannelPaymentListResult]
    def list_payments(channel_id, opts = {})
      path = '/api/channels/{channel_id}/payments'
      path = path.sub('{channel_id}', CGI.escape(channel_id.to_s))

      query_params = {}
      query_params[:starting_after] = opts[:starting_after] unless opts[:starting_after].nil?

      req = Request.new(
        method: :get,
        path: path,
        query_params: query_params
      )

      connection.call(req, return_type: ChannelPaymentListResult)
    end

    # Retrieve a channel
    # @param channel_id [String] Channel ID
    # @param [Hash] opts the optional parameters
    # @return [ChannelResult]
    def retrieve(channel_id, _opts = {})
      path = '/api/channels/{channel_id}'
      path = path.sub('{channel_id}', CGI.escape(channel_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: ChannelResult)
    end

    # Retrieve a channel by custom id
    # @param custom_id [String]
    # @param [Hash] opts the optional parameters
    # @return [ChannelResult]
    def retrieve_by_custom_id(custom_id, _opts = {})
      path = '/api/channels/custom_id/{custom_id}'
      path = path.sub('{custom_id}', CGI.escape(custom_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: ChannelResult)
    end

    # Retrieve a channel payment
    # @param channel_id [String] Channel ID
    # @param channel_payment_id [String] Channel payment ID
    # @param [Hash] opts the optional parameters
    # @return [ChannelPaymentResult]
    def retrieve_payment(channel_id, channel_payment_id, _opts = {})
      path = '/api/channels/{channel_id}/payments/{channel_payment_id}'
      path = path.sub('{channel_id}', CGI.escape(channel_id.to_s))
      path = path.sub('{channel_payment_id}', CGI.escape(channel_payment_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: ChannelPaymentResult)
    end

    # Update a channel
    # @param channel_id [String] Channel ID
    # @param channel_update_params [ChannelUpdateParams]
    # @param [Hash] opts the optional parameters
    # @return [ChannelResult]
    def update(channel_id, channel_update_params, _opts = {})
      path = '/api/channels/{channel_id}'
      path = path.sub('{channel_id}', CGI.escape(channel_id.to_s))

      req = Request.new(
        method: :patch,
        path: path,
        body_params: channel_update_params
      )

      connection.call(req, return_type: ChannelResult)
    end

    private

    attr_reader :connection
  end
end
