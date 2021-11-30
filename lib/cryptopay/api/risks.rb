# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  class Risks
    def initialize(connection)
      @connection = connection
    end

    # Score a coin address
    # @param risk_params [RiskParams]
    # @param [Hash] opts the optional parameters
    # @return [RiskResult]
    def score(risk_params, _opts = {})
      path = '/api/risks/score'

      req = Request.new(
        method: :post,
        path: path,
        body_params: risk_params
      )

      connection.call(req, return_type: RiskResult)
    end

    private

    attr_reader :connection
  end
end
