# frozen_string_literal: true

module Fixtures
  FIXTURES_PATH = Pathname(File.expand_path('fixtures', __dir__))

  def fixture(path)
    FIXTURES_PATH.join(path).read
  end
end

RSpec.configure do |config|
  config.include Fixtures
end
