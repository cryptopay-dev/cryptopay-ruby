# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::ExchangeTransfers do
  include_context :api

  describe '#commit' do
    it 'returns ExchangeTransferResult', :aggregate_failures, vcr: 'api/exchange_transfers/commit' do
      exchange_transfer = client.exchange_transfers.create(
        Cryptopay::ExchangeTransferParams.new(
          charged_currency: 'EUR',
          charged_amount: '100.0',
          received_currency: 'BTC',
          received_amount: nil,
          force_commit: false
        )
      ).data

      result = client.exchange_transfers.commit(exchange_transfer.id)
      p result # => <ExchangeTransferResult data=...>

      expect(result).to be_a(Cryptopay::ExchangeTransferResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#create' do
    it 'returns ExchangeTransferResult', :aggregate_failures, vcr: 'api/exchange_transfers/create' do
      params = Cryptopay::ExchangeTransferParams.new(
        charged_currency: 'EUR',
        charged_amount: '100.0',
        received_currency: 'BTC',
        received_amount: nil,
        force_commit: true
      )

      result = client.exchange_transfers.create(params)
      p result # => <ExchangeTransferResult data=...>

      expect(result).to be_a(Cryptopay::ExchangeTransferResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve' do
    it 'returns ExchangeTransferResult', :aggregate_failures, vcr: 'api/exchange_transfers/retrieve' do
      exchange_transfer_id = '2c090f99-7cc1-40da-9bca-7caa57b4ebfb'

      result = client.exchange_transfers.retrieve(exchange_transfer_id)
      p result # => <ExchangeTransferResult data=...>

      expect(result).to be_a(Cryptopay::ExchangeTransferResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
