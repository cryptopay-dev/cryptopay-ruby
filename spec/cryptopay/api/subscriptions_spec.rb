# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::Subscriptions do
  include_context :api

  describe '#cancel' do
    it 'returns SubscriptionResult', :aggregate_failures, vcr: 'api/subscriptions/cancel' do
      subscription_id = 'de37fb63-986b-4f83-bf9f-612734316fdc'

      result = client.subscriptions.cancel(subscription_id)
      p result # => <SubscriptionResult data=...>

      expect(result).to be_a(Cryptopay::SubscriptionResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#create' do
    it 'returns SubscriptionResult', :aggregate_failures, vcr: 'api/subscriptions/create' do
      params = Cryptopay::SubscriptionParams.new(
        name: 'Subscription name',
        amount: '100.0',
        currency: 'EUR',
        period: 'month',
        period_quantity: 3,
        payer_email: 'user@example.com',
        starts_at: Time.now.utc + (7 * 24 * 3600)
      )

      result = client.subscriptions.create(params)
      p result # => <SubscriptionResult data=...>

      expect(result).to be_a(Cryptopay::SubscriptionResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#list' do
    it 'returns SubscriptionListResult', :aggregate_failures, vcr: 'api/subscriptions/list' do
      result = client.subscriptions.list
      p result # => <SubscriptionListResult data=...>

      expect(result).to be_a(Cryptopay::SubscriptionListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve' do
    it 'returns SubscriptionResult', :aggregate_failures, vcr: 'api/subscriptions/retrieve' do
      subscription_id = '64249ede-8969-4d5c-a042-806f9c3e7db3'

      result = client.subscriptions.retrieve(subscription_id)
      p result # => <SubscriptionResult data=...>

      expect(result).to be_a(Cryptopay::SubscriptionResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve_by_custom_id' do
    it 'returns SubscriptionResult', :aggregate_failures, vcr: 'api/subscriptions/retrieve_by_custom_id' do
      custom_id = 'PAYMENT-123'

      result = client.subscriptions.retrieve_by_custom_id(custom_id)
      p result # => <SubscriptionResult data=...>

      expect(result).to be_a(Cryptopay::SubscriptionResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
