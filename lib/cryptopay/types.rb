# frozen_string_literal: true

require 'bigdecimal'

module Cryptopay
  module Decimal
    def self.build_from_hash(value)
      BigDecimal(value)
    end
  end
end
