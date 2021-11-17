# frozen_string_literal: true

# Auto-generated file
# DO NOT EDIT

module Cryptopay
  module TransactionReferenceType
    BANK_DEPOSIT = 'BankDeposit'
    BANK_WITHDRAWAL = 'BankWithdrawal'
    CHANNEL_PAYMENT = 'ChannelPayment'
    COIN_DEPOSIT = 'CoinDeposit'
    COIN_WITHDRAWAL = 'CoinWithdrawal'
    EXCHANGE_TRANSFER = 'ExchangeTransfer'
    INVOICE = 'Invoice'
    INVOICE_REFUND = 'InvoiceRefund'
    MANUAL_BALANCE_TRANSACTION = 'ManualBalanceTransaction'

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      value
    end
  end
end
