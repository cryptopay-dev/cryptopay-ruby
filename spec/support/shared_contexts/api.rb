# frozen_string_literal: true

RSpec.shared_context(:api) do
  let(:client) do
    Cryptopay::Client.new do |config|
      config.api_url = Cryptopay::SANDBOX
      config.api_key = ENV.fetch('API_KEY')
      config.api_secret = ENV.fetch('API_SECRET')
    end
  end
end
