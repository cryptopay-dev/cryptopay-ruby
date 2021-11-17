# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::Accounts do
  include_context :api

  describe '#list' do
    it 'returns AccountListResult', :aggregate_failures, vcr: 'api/accounts/list' do
      result = client.accounts.list
      p result # => <AccountListResult data=...>

      expect(result).to be_a(Cryptopay::AccountListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#list_transactions' do
    it 'returns TransactionListResult', :aggregate_failures, vcr: 'api/accounts/list_transactions' do
      account_id = '31804390-d44e-49e9-8698-ca781e0eb806'

      result = client.accounts.list_transactions(account_id)
      p result # => <TransactionListResult data=...>

      expect(result).to be_a(Cryptopay::TransactionListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
