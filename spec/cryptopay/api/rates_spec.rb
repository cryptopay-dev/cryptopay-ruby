# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::Rates do
  include_context :api

  describe '#all' do
    it 'returns RatesResult', :aggregate_failures, vcr: 'api/rates/all' do
      result = client.rates.all
      p result # => <RatesResult data=...>

      expect(result).to be_a(Cryptopay::RatesResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve' do
    it 'returns RateResult', :aggregate_failures, vcr: 'api/rates/retrieve' do
      base_currency = 'BTC'
      quote_currency = 'EUR'

      result = client.rates.retrieve(base_currency, quote_currency)
      p result # => <RateResult data=...>

      expect(result).to be_a(Cryptopay::RateResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
