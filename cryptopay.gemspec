# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'cryptopay/version'

Gem::Specification.new do |s|
  s.name = 'cryptopay'
  s.version = Cryptopay::VERSION
  s.authors = 'Cryptopay'
  s.email = 'support@cryptopay.me'
  s.homepage = 'https://developers.cryptopay.me'
  s.summary = 'The official Ruby gem for the Cryptopay API'
  s.description = ''
  s.license = 'MIT'
  s.required_ruby_version = '>= 2.6.0'

  s.metadata = {
    'bug_tracker_uri' => 'https://github.com/cryptopay-dev/cryptopay-ruby/issues',
    'source_code_uri' => 'https://github.com/cryptopay-dev/cryptopay-ruby',
    'rubygems_mfa_required' => 'true'
  }

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.executables   = []
  s.require_paths = ['lib']

  s.add_runtime_dependency('faraday', '~> 1.0', '>= 1.0.1')

  s.add_development_dependency('dotenv')
  s.add_development_dependency('pry-byebug')
  s.add_development_dependency('rspec')
  s.add_development_dependency('rubocop')
  s.add_development_dependency('vcr')
  s.add_development_dependency('webmock')
end
