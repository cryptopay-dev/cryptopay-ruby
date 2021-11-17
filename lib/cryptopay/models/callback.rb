# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  module Callback
    DISCRIMINATOR_NAME = :type
    private_constant :DISCRIMINATOR_NAME

    # Builds the object
    # @param [Mixed] Data to be matched against the list of oneOf items
    # @return [Cryptopay::ChannelPaymentCallback, Cryptopay::CoinWithdrawalCallback, Cryptopay::InvoiceCallback, nil] Returns the model or nil
    def self.build_from_hash(data)
      case data[DISCRIMINATOR_NAME]
      when 'ChannelPayment'
        ChannelPaymentCallback.build_from_hash(data)
      when 'CoinWithdrawal'
        CoinWithdrawalCallback.build_from_hash(data)
      when 'Invoice'
        InvoiceCallback.build_from_hash(data)
      end
    end
  end
end
