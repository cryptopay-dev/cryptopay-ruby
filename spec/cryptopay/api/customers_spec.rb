# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::Customers do
  include_context :api

  describe '#create' do
    it 'returns CustomerResult', :aggregate_failures, vcr: 'api/customers/create' do
      params = Cryptopay::CustomerParams.new(
        id: 'e2abd0899bada2814e6f6aa08aae61f8',
        currency: 'EUR'
      )

      result = client.customers.create(params)
      p result # => <CustomerResult data=...>

      expect(result).to be_a(Cryptopay::CustomerResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#list' do
    it 'returns CustomerListResult', :aggregate_failures, vcr: 'api/customers/list' do
      result = client.customers.list
      p result # => <CustomerListResult data=...>

      expect(result).to be_a(Cryptopay::CustomerListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve' do
    it 'returns CustomerResult', :aggregate_failures, vcr: 'api/customers/retrieve' do
      customer_id = 'CUSTOMER-123'

      result = client.customers.retrieve(customer_id)
      p result # => <CustomerResult data=...>

      expect(result).to be_a(Cryptopay::CustomerResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#update' do
    it 'returns CustomerResult', :aggregate_failures, vcr: 'api/customers/update' do
      customer_id = 'CUSTOMER-123'
      params = Cryptopay::CustomerUpdateParams.new(
        refund_addresses: {
          'BTC' => '2N9wPGx67zdSeAbXi15qHgoZ9Hb9Uxhd2uQ'
        }
      )

      result = client.customers.update(customer_id, params)
      p result # => <CustomerResult data=...>

      expect(result).to be_a(Cryptopay::CustomerResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
