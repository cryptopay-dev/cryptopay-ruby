# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Subscriptions
    def initialize(connection)
      @connection = connection
    end

    # Cancel a subscription
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionResult]
    def cancel(subscription_id, _opts = {})
      path = '/api/subscriptions/{subscription_id}/cancel'
      path = path.sub('{subscription_id}', CGI.escape(subscription_id.to_s))

      req = Request.new(
        method: :post,
        path: path
      )

      connection.call(req, return_type: SubscriptionResult)
    end

    # Create a subscription
    # @param subscription_params [SubscriptionParams]
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionResult]
    def create(subscription_params, _opts = {})
      path = '/api/subscriptions'

      req = Request.new(
        method: :post,
        path: path,
        body_params: subscription_params
      )

      connection.call(req, return_type: SubscriptionResult)
    end

    # List subscriptions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :starting_after Pagination parameter. ID to start after
    # @return [SubscriptionListResult]
    def list(opts = {})
      path = '/api/subscriptions'

      query_params = {}
      query_params[:starting_after] = opts[:starting_after] unless opts[:starting_after].nil?

      req = Request.new(
        method: :get,
        path: path,
        query_params: query_params
      )

      connection.call(req, return_type: SubscriptionListResult)
    end

    # Retrieve a subscription
    # @param subscription_id [String] Subscription ID
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionResult]
    def retrieve(subscription_id, _opts = {})
      path = '/api/subscriptions/{subscription_id}'
      path = path.sub('{subscription_id}', CGI.escape(subscription_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: SubscriptionResult)
    end

    # Retrieve a subscription by custom_id
    # @param custom_id [String]
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionResult]
    def retrieve_by_custom_id(custom_id, _opts = {})
      path = '/api/subscriptions/custom_id/{custom_id}'
      path = path.sub('{custom_id}', CGI.escape(custom_id.to_s))

      req = Request.new(
        method: :get,
        path: path
      )

      connection.call(req, return_type: SubscriptionResult)
    end

    private

    attr_reader :connection
  end
end
