# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::Transactions do
  include_context :api

  describe '#list' do
    it 'returns TransactionListResult', :aggregate_failures, vcr: 'api/transactions/list' do
      result = client.transactions.list
      p result # => <TransactionListResult data=...>

      expect(result).to be_a(Cryptopay::TransactionListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
