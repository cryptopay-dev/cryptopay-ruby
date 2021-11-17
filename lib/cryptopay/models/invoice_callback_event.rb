# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  module InvoiceCallbackEvent
    CREATED = 'created'
    REFUNDED = 'refunded'
    RECALCULATED = 'recalculated'
    STATUS_CHANGED = 'status_changed'
    TRANSACTION_CREATED = 'transaction_created'
    TRANSACTION_CONFIRMED = 'transaction_confirmed'

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      value
    end
  end
end
