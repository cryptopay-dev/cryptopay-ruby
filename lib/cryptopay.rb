# frozen_string_literal: true

require 'base64'
require 'cgi'
require 'date'
require 'faraday'
require 'json'
require 'time'

require 'cryptopay/authentication'
require 'cryptopay/callbacks'
require 'cryptopay/client'
require 'cryptopay/config'
require 'cryptopay/connection'
require 'cryptopay/encoder'
require 'cryptopay/errors'
require 'cryptopay/request'
require 'cryptopay/require'
require 'cryptopay/types'
require 'cryptopay/version'

module Cryptopay
  PRODUCTION = 'https://business.cryptopay.me'
  SANDBOX = 'https://business-sandbox.cryptopay.me'
end
