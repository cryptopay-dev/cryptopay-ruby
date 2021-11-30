# frozen_string_literal: true

require 'base64'
require 'cgi'
require 'faraday'
require 'json'
require 'date'
require 'time'

# Common files
require 'cryptopay/version'
require 'cryptopay/encoder'
require 'cryptopay/require'
require 'cryptopay/config'
require 'cryptopay/authentication'
require 'cryptopay/connection'
require 'cryptopay/types'
require 'cryptopay/request'
require 'cryptopay/callbacks'
require 'cryptopay/client'
require 'cryptopay/errors'

module Cryptopay
  PRODUCTION = 'https://business.cryptopay.me'
  SANDBOX = 'https://business-sandbox.cryptopay.me'
end
