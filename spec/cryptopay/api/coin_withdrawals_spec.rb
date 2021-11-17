# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::CoinWithdrawals do
  include_context :api

  describe '#commit' do
    it 'returns CoinWithdrawalResult', :aggregate_failures, vcr: 'api/coin_withdrawals/commit' do
      coin_withdrawal = client.coin_withdrawals.create(
        Cryptopay::CoinWithdrawalParams.new(
          address: '2Mz3bcjSVHG8uQJpNjmCxp24VdTjwaqmFcJ',
          charged_amount: '100.0',
          charged_currency: 'EUR',
          received_currency: 'BTC',
          force_commit: false
        )
      ).data

      result = client.coin_withdrawals.commit(coin_withdrawal.id)
      p result # => <CoinWithdrawalResult data=...>

      expect(result).to be_a(Cryptopay::CoinWithdrawalResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#create' do
    it 'returns CoinWithdrawalResult', :aggregate_failures, vcr: 'api/coin_withdrawals/create' do
      params = Cryptopay::CoinWithdrawalParams.new(
        address: '2Mz3bcjSVHG8uQJpNjmCxp24VdTjwaqmFcJ',
        charged_amount: '100.0',
        charged_currency: 'EUR',
        received_currency: 'BTC',
        force_commit: true
      )

      result = client.coin_withdrawals.create(params)
      p result # => <CoinWithdrawalResult data=...>

      expect(result).to be_a(Cryptopay::CoinWithdrawalResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#list' do
    it 'returns CoinWithdrawalListResult', :aggregate_failures, vcr: 'api/coin_withdrawals/list' do
      result = client.coin_withdrawals.list
      p result # => <CoinWithdrawalListResult data=...>

      expect(result).to be_a(Cryptopay::CoinWithdrawalListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#list_network_fees' do
    it 'returns NetworkFeeListResult', :aggregate_failures, vcr: 'api/coin_withdrawals/list_network_fees' do
      result = client.coin_withdrawals.list_network_fees
      p result # => <NetworkFeeListResult data=...>

      expect(result).to be_a(Cryptopay::NetworkFeeListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve' do
    it 'returns CoinWithdrawalResult', :aggregate_failures, vcr: 'api/coin_withdrawals/retrieve' do
      coin_withdrawal_id = '3cf9d1c4-6191-4826-8cae-2c717810c7e9'

      result = client.coin_withdrawals.retrieve(coin_withdrawal_id)
      p result # => <CoinWithdrawalResult data=...>

      expect(result).to be_a(Cryptopay::CoinWithdrawalResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve_by_custom_id' do
    it 'returns CoinWithdrawalResult', :aggregate_failures, vcr: 'api/coin_withdrawals/retrieve_by_custom_id' do
      custom_id = 'PAYMENT-123'

      result = client.coin_withdrawals.retrieve_by_custom_id(custom_id)
      p result # => <CoinWithdrawalResult data=...>

      expect(result).to be_a(Cryptopay::CoinWithdrawalResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
