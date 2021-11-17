# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

require 'spec_helper'

RSpec.describe Cryptopay::Risks do
  include_context :api

  describe '#score' do
    it 'returns RiskResult', :aggregate_failures, vcr: 'api/risks/score' do
      params = Cryptopay::RiskParams.new(
        address: '2N9wPGx67zdSeAbXi15qHgoZ9Hb9Uxhd2uQ',
        currency: 'BTC',
        type: 'source_of_funds'
      )

      result = client.risks.score(params)
      p result # => <RiskResult data=...>

      expect(result).to be_a(Cryptopay::RiskResult)
      expect(result).to be_valid
      expect(result.invalid_properties).to be_empty
    end
  end
end
