# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Cryptopay::Connection do
  subject(:connection) { described_class.new(config) }

  let(:config) do
    Cryptopay::Config.new do |config|
      config.api_url = 'https://whatever'
      config.api_key = 'whatever'
      config.api_secret = 'whatever'

      config.faraday_adapter = [:test, stubs]
    end
  end

  let(:stubs) do
    Faraday::Adapter::Test::Stubs.new do |stub|
      stub.get('404') do
        [
          404,
          {},
          {
            error: {
              code: 'not_found',
              message: 'not found',
              args: {},
              details: []
            },
            meta: {
              request_id: 'cb831d45a5d19b4a6140d677fa05a61c'
            }
          }.to_json
        ]
      end

      stub.get('502') do
        [
          502,
          {},
          'Bad gateway'
        ]
      end

      stub.get('connection_failed') do
        raise Faraday::Error, 'connection failed'
      end
    end
  end

  describe '#call' do
    context '404 error' do
      let(:request) do
        Cryptopay::Request.new(
          method: :get,
          path: '/404'
        )
      end

      it 'raises ClientError', vcr: 'connection/4xx' do
        expect { connection.call(request, return_type: nil) }
          .to raise_error do |error|
          expect(error).to be_a(Cryptopay::ClientError)
          expect(error.message).to include('404')
          expect(error.message).to include('not_found')
        end
      end
    end

    context '502 error' do
      let(:request) do
        Cryptopay::Request.new(
          method: :get,
          path: '/502'
        )
      end

      it 'raises ServerError', vcr: 'connection/4xx' do
        expect { connection.call(request, return_type: nil) }
          .to raise_error do |error|
          expect(error).to be_a(Cryptopay::ServerError)
          expect(error.message).to include('502')
          expect(error.message).to include('Bad gateway')
        end
      end
    end

    context 'connection error' do
      let(:request) do
        Cryptopay::Request.new(
          method: :get,
          path: '/connection_failed'
        )
      end

      it 'raises ConnectionError', vcr: 'connection/4xx' do
        expect { connection.call(request, return_type: nil) }
          .to raise_error do |error|
          expect(error).to be_a(Cryptopay::ConnectionError)
          expect(error.message).to include('connection failed')
        end
      end
    end
  end
end
