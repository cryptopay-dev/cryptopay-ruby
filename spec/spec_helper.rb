# frozen_string_literal: true

require 'bundler/setup'
require 'cryptopay'
require 'dotenv/load'
require 'faraday'
require 'pry-byebug'

Dir['./spec/support/**/*.rb'].sort.each { |f| require f }

RSpec.configure do |config|
  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with(:rspec) do |c|
    c.syntax = :expect
  end
end
