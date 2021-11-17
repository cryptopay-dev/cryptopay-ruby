# frozen_string_literal: true

require 'securerandom'
require 'spec_helper'

RSpec.describe Cryptopay::Callbacks do
  subject(:callbacks) { described_class.new(secret) }

  let(:secret) { SecureRandom.urlsafe_base64(32) }
  let(:signature) { OpenSSL::HMAC.hexdigest('SHA256', secret, body) }

  describe '#verify' do
    let(:body) { fixture('callbacks/invoice.json') }

    context 'invalid signature' do
      let(:signature) { SecureRandom.uuid }

      it 'raises SignatureVerificationError' do
        expect { callbacks.verify(body, signature) }
          .to raise_error(Cryptopay::SignatureVerificationError)
      end
    end

    context 'invoice callback' do
      let(:body) { fixture('callbacks/invoice.json') }

      it 'returns InvoiceCallback' do
        result = callbacks.verify(body, signature)

        expect(result).to be_a(Cryptopay::InvoiceCallback)
        expect(result).to be_valid
      end
    end

    context 'coin withdrawal callback' do
      let(:body) { fixture('callbacks/coin_withdrawal.json') }

      it 'returns CoinWithdrawalCallback' do
        result = callbacks.verify(body, signature)

        expect(result).to be_a(Cryptopay::CoinWithdrawalCallback)
        expect(result).to be_valid
      end
    end

    context 'channel payment callback' do
      let(:body) { fixture('callbacks/channel_payment.json') }

      it 'returns ChannelPaymentCallback' do
        result = callbacks.verify(body, signature)

        expect(result).to be_a(Cryptopay::ChannelPaymentCallback)
        expect(result).to be_valid
      end
    end

    context 'unknown callback' do
      let(:body) { '{"type": "ExchangeTransfer", "data": {}}' }

      it 'returns nil' do
        result = callbacks.verify(body, signature)

        expect(result).to be_nil
      end
    end
  end
end
