# frozen_string_literal: true

module Cryptopay
  class Client
    attr_reader :invoices,
                :rates,
                :coin_withdrawals,
                :channels,
                :accounts,
                :transactions,
                :exchange_transfers,
                :customers,
                :risks,
                :callbacks

    def initialize(&block)
      config = Config.new(&block)
      connection = Connection.new(config)

      setup_apis(connection)

      @callbacks = Callbacks.new(config.callback_secret)
    end

    private

    def setup_apis(connection)
      @invoices = Invoices.new(connection)
      @rates = Rates.new(connection)
      @coin_withdrawals = CoinWithdrawals.new(connection)
      @channels = Channels.new(connection)
      @accounts = Accounts.new(connection)
      @transactions = Transactions.new(connection)
      @exchange_transfers = ExchangeTransfers.new(connection)
      @customers = Customers.new(connection)
      @risks = Risks.new(connection)
    end
  end
end
