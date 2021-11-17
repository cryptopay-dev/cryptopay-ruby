# Cryptopay Ruby Library

Cryptopay - the official Ruby gem for the Cryptopay API

Cryptopay is a payment gateway and business wallet that allows merchants to automate the processes of accepting cryptocurrency payments and payouts from their customers, as well as making currency exchange transactions and receiving data on the transaction history and account balance statuses for reporting.

For more information, please visit [Cryptopay API docs](https://developers.cryptopay.me).

# Table of contents

* [Installation](#installation)
* [Configuration](#configuration)
* [Usage](#usage)
   * [Accounts](#accounts)
   * [Channels](#channels)
   * [CoinWithdrawals](#coinwithdrawals)
   * [Customers](#customers)
   * [ExchangeTransfers](#exchangetransfers)
   * [Invoices](#invoices)
   * [Rates](#rates)
   * [Risks](#risks)
   * [Transactions](#transactions)
* [Callbacks](#callbacks)
* [Development](#development)
* [Contributing](#contributing)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cryptopay-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cryptopay-ruby

### Requirements

* Ruby 2.6+

## Configuration

### Create API credentials

Learn mode about API credentials at [Developers guide](https://developers.cryptopay.me/guides/api-credentials)

### Configure library

```ruby
require 'cryptopay'

client = Cryptopay::Client.new do |config|
  config.api_url = Cryptopay::SANDBOX # Or Cryptopay::PRODUCTION
  config.api_key = 'your api key'
  config.api_secret = 'your api secret'
  config.callback_secret = '' # Optional
end
```

## Usage

### Accounts

[Accounts API docs](https://developers.cryptopay.me/reference/accounts)

#### List accounts


```ruby
result = client.accounts.list
p result # => <AccountListResult data=...>
```

#### List account transactions


```ruby
account_id = '31804390-d44e-49e9-8698-ca781e0eb806'

result = client.accounts.list_transactions(account_id)
p result # => <TransactionListResult data=...>
```

### Channels

A channel is a static cryptocurrency address that may be assigned to each one of your customers.

[Channels API docs](https://developers.cryptopay.me/reference/payment-channels)

#### Create a channel


```ruby
params = Cryptopay::ChannelParams.new(
  name: 'Channel name',
  pay_currency: 'BTC',
  receiver_currency: 'EUR'
)

result = client.channels.create(params)
p result # => <ChannelResult data=...>
```

#### List channels


```ruby
result = client.channels.list
p result # => <ChannelListResult data=...>
```

#### List channel payments


```ruby
channel_id = '15d0bb11-1e9f-4295-bec5-abd9d5a906a1'

result = client.channels.list_payments(channel_id)
p result # => <ChannelPaymentListResult data=...>
```

#### Retrieve a channel


```ruby
channel_id = '15d0bb11-1e9f-4295-bec5-abd9d5a906a1'

result = client.channels.retrieve(channel_id)
p result # => <ChannelResult data=...>
```

#### Retrieve a channel by custom id


```ruby
custom_id = 'CHANNEL-123'

result = client.channels.retrieve_by_custom_id(custom_id)
p result # => <ChannelResult data=...>
```

#### Retrieve a channel payment


```ruby
channel_id = '15d0bb11-1e9f-4295-bec5-abd9d5a906a1'
channel_payment_id = '704291ec-0b90-4118-89aa-0c9681c3213c'

result = client.channels.retrieve_payment(channel_id, channel_payment_id)
p result # => <ChannelPaymentResult data=...>
```

#### Update a channel


```ruby
channel_id = '15d0bb11-1e9f-4295-bec5-abd9d5a906a1'
params = Cryptopay::ChannelUpdateParams.new(
  status: 'disabled'
)

result = client.channels.update(channel_id, params)
p result # => <ChannelResult data=...>
```

### CoinWithdrawals

In addition to accepting payments through the Cryptopay payment gateway, it is also possible to make payments to your customers in any of the cryptocurrency currently supported by Cryptopay. In Cryptopay, these payments are called “Coin Withdrawal”. The process of requesting coin withdrawal is almost the same for a customer in Cashier as the process of making a deposit with one exception - the customer will need to specify the address of the wallet he wants to send the cryptocurrency to.

[Coin withdrawals API docs](https://developers.cryptopay.me/reference/coin-withdrawals)

#### Commit a withdrawal


```ruby
coin_withdrawal = client.coin_withdrawals.create(Cryptopay::CoinWithdrawalParams.new(
  address: '2Mz3bcjSVHG8uQJpNjmCxp24VdTjwaqmFcJ',
  charged_amount: '100.0',
  charged_currency: 'EUR',
  received_currency: 'BTC',
  force_commit: false
)).data

result = client.coin_withdrawals.commit(coin_withdrawal.id)
p result # => <CoinWithdrawalResult data=...>
```

#### Create a withdrawal

[Documentation](https://developers.cryptopay.me/guides/payouts/create-a-coin-withdrawal)

```ruby
params = Cryptopay::CoinWithdrawalParams.new(
  address: '2Mz3bcjSVHG8uQJpNjmCxp24VdTjwaqmFcJ',
  charged_amount: '100.0',
  charged_currency: 'EUR',
  received_currency: 'BTC',
  force_commit: true
)

result = client.coin_withdrawals.create(params)
p result # => <CoinWithdrawalResult data=...>
```

#### List withdrawals


```ruby
result = client.coin_withdrawals.list
p result # => <CoinWithdrawalListResult data=...>
```

#### List network fees


```ruby
result = client.coin_withdrawals.list_network_fees
p result # => <NetworkFeeListResult data=...>
```

#### Retrieve a withdrawal


```ruby
coin_withdrawal_id = '3cf9d1c4-6191-4826-8cae-2c717810c7e9'

result = client.coin_withdrawals.retrieve(coin_withdrawal_id)
p result # => <CoinWithdrawalResult data=...>
```

#### Retrieve a withdrawal by custom id


```ruby
custom_id = 'PAYMENT-123'

result = client.coin_withdrawals.retrieve_by_custom_id(custom_id)
p result # => <CoinWithdrawalResult data=...>
```

### Customers

Customer objects allow you to reject High-Risk transactions automatically, and to track multiple transactions, that are associated with the same customer

[Customers API docs](https://developers.cryptopay.me/reference/customers)

#### Create a customer


```ruby
params = Cryptopay::CustomerParams.new(
  id: 'e2abd0899bada2814e6f6aa08aae61f8',
  currency: 'EUR'
)

result = client.customers.create(params)
p result # => <CustomerResult data=...>
```

#### List customers


```ruby
result = client.customers.list
p result # => <CustomerListResult data=...>
```

#### Retrieve a customer


```ruby
customer_id = 'CUSTOMER-123'

result = client.customers.retrieve(customer_id)
p result # => <CustomerResult data=...>
```

#### Update a customer


```ruby
customer_id = 'CUSTOMER-123'
params = Cryptopay::CustomerUpdateParams.new(
  refund_addresses: {
    'BTC' => '2N9wPGx67zdSeAbXi15qHgoZ9Hb9Uxhd2uQ'
  }
)

result = client.customers.update(customer_id, params)
p result # => <CustomerResult data=...>
```

### ExchangeTransfers

[Exchange transfers API docs](https://developers.cryptopay.me/reference/exchange)

#### Commit an exchange transfer


```ruby
exchange_transfer = client.exchange_transfers.create(Cryptopay::ExchangeTransferParams.new(
  charged_currency: 'EUR',
  charged_amount: '100.0',
  received_currency: 'BTC',
  received_amount: nil,
  force_commit: false
)).data

result = client.exchange_transfers.commit(exchange_transfer.id)
p result # => <ExchangeTransferResult data=...>
```

#### Create an exchange transfer


```ruby
params = Cryptopay::ExchangeTransferParams.new(
  charged_currency: 'EUR',
  charged_amount: '100.0',
  received_currency: 'BTC',
  received_amount: nil,
  force_commit: true
)

result = client.exchange_transfers.create(params)
p result # => <ExchangeTransferResult data=...>
```

#### Retrieve an exchange transfer


```ruby
exchange_transfer_id = '2c090f99-7cc1-40da-9bca-7caa57b4ebfb'

result = client.exchange_transfers.retrieve(exchange_transfer_id)
p result # => <ExchangeTransferResult data=...>
```

### Invoices

An invoice is a request for a cryptocurrency payment which contains a unique BTC, LTC, ETH or XRP address and the amount that has to be paid while the invoice is valid.

[Invoices API docs](https://developers.cryptopay.me/reference/invoices)

#### Commit invoice recalculation


```ruby
invoice_id = 'c8233d57-78c8-4c36-b35e-940ae9067c78'
recalculation = client.invoices.create_recalculation(invoice_id, {}).data

result = client.invoices.commit_recalculation(invoice_id, recalculation.id)
p result # => <InvoiceRecalculationResult data=...>
```

#### Create an invoice


```ruby
params = Cryptopay::InvoiceParams.new(
  price_amount: '100.0',
  price_currency: 'EUR',
  pay_currency: 'BTC'
)

result = client.invoices.create(params)
p result # => <InvoiceResult data=...>
```

#### Create invoice recalculation


```ruby
invoice_id = '440d0d3a-52c4-4097-b5b1-d9b137aaca60'
invoice_recalculation_params = Cryptopay::InvoiceRecalculationParams.new(force_commit: true)

result = client.invoices.create_recalculation(invoice_id, invoice_recalculation_params)
p result # => <InvoiceRecalculationResult data=...>
```

#### Create invoice refund


```ruby
invoice_id = '7e274430-e20f-4321-8748-20824287ae44'
invoice_refund_params = Cryptopay::InvoiceRefundParams.new(address: '0xf3532c1fd002665ec54d46a50787e0c69c76cd44')

result = client.invoices.create_refund(invoice_id, invoice_refund_params)
p result # => <InvoiceRefundResult data=...>
```

#### List invoices


```ruby
result = client.invoices.list
p result # => <InvoiceListResult data=...>
```

#### List invoice refunds


```ruby
invoice_id = '7e274430-e20f-4321-8748-20824287ae44'

result = client.invoices.list_refunds(invoice_id)
p result # => <InvoiceRefundListResult data=...>
```

#### Retrieve an invoice


```ruby
invoice_id = 'c8233d57-78c8-4c36-b35e-940ae9067c78'

result = client.invoices.retrieve(invoice_id)
p result # => <InvoiceResult data=...>
```

#### Retrieve an invoice by custom_id


```ruby
custom_id = 'PAYMENT-123'

result = client.invoices.retrieve_by_custom_id(custom_id)
p result # => <InvoiceResult data=...>
```

### Rates

[Public rates API docs](https://developers.cryptopay.me/reference/public-rates)

#### Retrieve all rates


```ruby
result = client.rates.all
p result # => <RatesResult data=...>
```

#### Retrieve a pair rate


```ruby
base_currency = 'BTC'
quote_currency = 'EUR'

result = client.rates.retrieve(base_currency, quote_currency)
p result # => <RateResult data=...>
```

### Risks

[Risks API docs](https://developers.cryptopay.me/reference/risks)

#### Score a coin address


```ruby
params = Cryptopay::RiskParams.new(
  address: '2N9wPGx67zdSeAbXi15qHgoZ9Hb9Uxhd2uQ',
  currency: 'BTC',
  type: 'source_of_funds'
)

result = client.risks.score(params)
p result # => <RiskResult data=...>
```

### Transactions

[Transactions API docs](https://developers.cryptopay.me/reference/transactions)

#### List transactions


```ruby
result = client.transactions.list
p result # => <TransactionListResult data=...>
```


## Callbacks

[Documentation](https://developers.cryptopay.me/guides/api-basics/callbacks)

Every callback request contains a `X-Cryptopay-Signature` header which is needed to verify webhook body

```ruby
client = Cryptopay::Client.new do |config|
  # ...
  config.callback_secret = 'your callback secret'
end

body = '{"type":"Invoice","event":"status_changed","data":{"id":"c8233d57-78c8-4c36-b35e-940ae9067c78","custom_id":null,"customer_id":null,"status":"completed","status_context":null,"address":"0x516cf64763b17893f9defa60e35d6bee26535ef9","uri":"ethereum:0x23a2e5f75cdfe03763d929379f5dc3f14f7045cd/transfer?address=0x516cf64763b17893f9defa60e35d6bee26535ef9&uint256=0.5e2","price_amount":"0.00005","price_currency":"USDT","pay_amount":"0.00005","pay_currency":"USDT","fee":"0.000001","fee_currency":"USDT","paid_amount":"0.00005","transactions":[{"txid":"0x549ae0eade6c33f087eceb0f2b586486b0442775fe8ab90c56c211e774ce27b1","risk":{"score":7.3,"level":"medium","resource_name":"default","resource_category":"unknown"}}],"name":null,"description":null,"metadata":null,"success_redirect_url":null,"unsuccess_redirect_url":null,"hosted_page_url":"https://hosted-business-sandbox.cryptopay.me/invoices/c8233d57-78c8-4c36-b35e-940ae9067c78","created_at":"2021-06-16T08:20:13+00:00","expires_at":"2021-06-16T10:20:13+00:00"}}'
signature = '7c021857107203da4af1d24007bb0f752e2f04478e5e5bff83719101f2349b54' # Value of the `X-Cryptopay-Signature` header

result = client.callbacks.verify(body, signature)
p result # => <InvoiceCallback event='status_changed' type='Invoice' data=<Invoice ...>>
```

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cryptopay-dev/cryptopay-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
