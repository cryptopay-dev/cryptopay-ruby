# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::Invoices do
  include_context :api

  describe '#commit_recalculation' do
    it 'returns InvoiceRecalculationResult', :aggregate_failures, vcr: 'api/invoices/commit_recalculation' do
      invoice_id = 'c8233d57-78c8-4c36-b35e-940ae9067c78'
      recalculation = client.invoices.create_recalculation(invoice_id, {}).data

      result = client.invoices.commit_recalculation(invoice_id, recalculation.id)
      p result # => <InvoiceRecalculationResult data=...>

      expect(result).to be_a(Cryptopay::InvoiceRecalculationResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#create' do
    it 'returns InvoiceResult', :aggregate_failures, vcr: 'api/invoices/create' do
      params = Cryptopay::InvoiceParams.new(
        price_amount: '100.0',
        price_currency: 'EUR',
        pay_currency: 'BTC'
      )

      result = client.invoices.create(params)
      p result # => <InvoiceResult data=...>

      expect(result).to be_a(Cryptopay::InvoiceResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#create_recalculation' do
    it 'returns InvoiceRecalculationResult', :aggregate_failures, vcr: 'api/invoices/create_recalculation' do
      invoice_id = '440d0d3a-52c4-4097-b5b1-d9b137aaca60'
      invoice_recalculation_params = Cryptopay::InvoiceRecalculationParams.new(force_commit: true)

      result = client.invoices.create_recalculation(invoice_id, invoice_recalculation_params)
      p result # => <InvoiceRecalculationResult data=...>

      expect(result).to be_a(Cryptopay::InvoiceRecalculationResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#create_refund' do
    it 'returns InvoiceRefundResult', :aggregate_failures, vcr: 'api/invoices/create_refund' do
      invoice_id = '7e274430-e20f-4321-8748-20824287ae44'
      invoice_refund_params = Cryptopay::InvoiceRefundParams.new(address: '0xf3532c1fd002665ec54d46a50787e0c69c76cd44')

      result = client.invoices.create_refund(invoice_id, invoice_refund_params)
      p result # => <InvoiceRefundResult data=...>

      expect(result).to be_a(Cryptopay::InvoiceRefundResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#list' do
    it 'returns InvoiceListResult', :aggregate_failures, vcr: 'api/invoices/list' do
      result = client.invoices.list
      p result # => <InvoiceListResult data=...>

      expect(result).to be_a(Cryptopay::InvoiceListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#list_refunds' do
    it 'returns InvoiceRefundListResult', :aggregate_failures, vcr: 'api/invoices/list_refunds' do
      invoice_id = '7e274430-e20f-4321-8748-20824287ae44'

      result = client.invoices.list_refunds(invoice_id)
      p result # => <InvoiceRefundListResult data=...>

      expect(result).to be_a(Cryptopay::InvoiceRefundListResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve' do
    it 'returns InvoiceResult', :aggregate_failures, vcr: 'api/invoices/retrieve' do
      invoice_id = 'c8233d57-78c8-4c36-b35e-940ae9067c78'

      result = client.invoices.retrieve(invoice_id)
      p result # => <InvoiceResult data=...>

      expect(result).to be_a(Cryptopay::InvoiceResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end

  describe '#retrieve_by_custom_id' do
    it 'returns InvoiceResult', :aggregate_failures, vcr: 'api/invoices/retrieve_by_custom_id' do
      custom_id = 'PAYMENT-123'

      result = client.invoices.retrieve_by_custom_id(custom_id)
      p result # => <InvoiceResult data=...>

      expect(result).to be_a(Cryptopay::InvoiceResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
