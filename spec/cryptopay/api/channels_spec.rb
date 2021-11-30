# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::Channels do
  include_context :api

  describe '#create' do
    it 'returns ChannelResult', :aggregate_failures, vcr: 'api/channels/create' do
      params = Cryptopay::ChannelParams.new(
        name: 'Channel name',
        pay_currency: 'BTC',
        receiver_currency: 'EUR'
      )

      result = client.channels.create(params)
      p result # => <ChannelResult data=...>

      expect(result).to be_a(Cryptopay::ChannelResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#list' do
    it 'returns ChannelListResult', :aggregate_failures, vcr: 'api/channels/list' do
      result = client.channels.list
      p result # => <ChannelListResult data=...>

      expect(result).to be_a(Cryptopay::ChannelListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#list_payments' do
    it 'returns ChannelPaymentListResult', :aggregate_failures, vcr: 'api/channels/list_payments' do
      channel_id = '15d0bb11-1e9f-4295-bec5-abd9d5a906a1'

      result = client.channels.list_payments(channel_id)
      p result # => <ChannelPaymentListResult data=...>

      expect(result).to be_a(Cryptopay::ChannelPaymentListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve' do
    it 'returns ChannelResult', :aggregate_failures, vcr: 'api/channels/retrieve' do
      channel_id = '15d0bb11-1e9f-4295-bec5-abd9d5a906a1'

      result = client.channels.retrieve(channel_id)
      p result # => <ChannelResult data=...>

      expect(result).to be_a(Cryptopay::ChannelResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve_by_custom_id' do
    it 'returns ChannelResult', :aggregate_failures, vcr: 'api/channels/retrieve_by_custom_id' do
      custom_id = 'CHANNEL-123'

      result = client.channels.retrieve_by_custom_id(custom_id)
      p result # => <ChannelResult data=...>

      expect(result).to be_a(Cryptopay::ChannelResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve_payment' do
    it 'returns ChannelPaymentResult', :aggregate_failures, vcr: 'api/channels/retrieve_payment' do
      channel_id = '15d0bb11-1e9f-4295-bec5-abd9d5a906a1'
      channel_payment_id = '704291ec-0b90-4118-89aa-0c9681c3213c'

      result = client.channels.retrieve_payment(channel_id, channel_payment_id)
      p result # => <ChannelPaymentResult data=...>

      expect(result).to be_a(Cryptopay::ChannelPaymentResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#update' do
    it 'returns ChannelResult', :aggregate_failures, vcr: 'api/channels/update' do
      channel_id = '15d0bb11-1e9f-4295-bec5-abd9d5a906a1'
      params = Cryptopay::ChannelUpdateParams.new(
        status: 'disabled'
      )

      result = client.channels.update(channel_id, params)
      p result # => <ChannelResult data=...>

      expect(result).to be_a(Cryptopay::ChannelResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
