# frozen_string_literal: true

module Cryptopay
  class Connection
    def initialize(config)
      @config = config
      @auth = Authentication.new(api_key: config.api_key, api_secret: config.api_secret)
      @faraday = setup_faraday
    end

    def call(req, return_type:)
      auth.sign(req)

      res = run_request(req)
      body = JSON.parse(res.body, symbolize_names: true)

      return_type.build_from_hash(body)
    end

    private

    attr_reader :config, :auth, :faraday

    def run_request(req)
      res = faraday.run_request(req.method, req.path, req.body, req.headers)
      check_error(res)
    rescue Faraday::Error => e
      raise(ConnectionError, e)
    end

    def setup_faraday
      adapter = config.faraday_adapter || Faraday.default_adapter

      @connection = Faraday.new(url: config.api_url) do |f|
        config.faraday_builder&.call(f)

        f.adapter(*adapter)
      end
    end

    def check_error(res)
      error = Error.from_response(res)
      raise(error) if error

      res
    end
  end
end
