# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::Coins do
  include_context :api

  describe '#list' do
    it 'returns CoinListResult', :aggregate_failures, vcr: 'api/coins/list' do
      result = client.coins.list
      p result # => <CoinListResult data=...>

      expect(result).to be_a(Cryptopay::CoinListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
