# frozen_string_literal: true

module Cryptopay
  class Request
    attr_reader :method, :path, :body, :date, :headers, :content_type

    DEFAULT_HEADERS = {
      'Accept' => 'application/json',
      'User-Agent' => "Cryptopay Ruby v#{VERSION}"
    }.freeze

    CONTENT_TYPE = 'application/json'

    def initialize(method:, path:, query_params: {}, body_params: {})
      @method = method
      @path = prepare_query(path, query_params)
      @body = prepare_body(body_params.to_hash)
      @date = Time.now.httpdate
      @content_type = CONTENT_TYPE
      @headers = DEFAULT_HEADERS.merge(Date: date, 'Content-Type': @content_type)
    end

    def add_header(key, value)
      @headers = headers.merge(key => value)
    end

    private

    def prepare_query(path, params)
      return path if params.empty?

      query = encode_query(params)
      [path, query].join('?')
    end

    def prepare_body(params)
      return if params.empty?

      params.to_json
    end

    def encode_query(params)
      Faraday::NestedParamsEncoder.encode(params)
    end
  end
end
