# frozen_string_literal: true

require 'vcr'
require 'webmock'

VCR.configure do |c|
  c.cassette_library_dir = './spec/support/cassettes'
  c.hook_into(:webmock)
  c.default_cassette_options = { record: :once }
  c.configure_rspec_metadata!

  c.filter_sensitive_data('<API_KEY>') { ENV.fetch('API_KEY', nil) }
  c.filter_sensitive_data('<API_SECRET>') { ENV.fetch('API_SECRET', nil) }
end
