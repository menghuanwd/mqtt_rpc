# MQTTRpc

Rabbitmq Transfer Message By Sync On Mqtt

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mqtt_rpc'
```

And then execute:

  $ bundle

Or install it yourself as:

  $ gem install mqtt_rpc

## Usage

```ruby
  require 'mqtt_rpc'

  # 3 seconds will timeout, default: 10
  sync_client = MQTTRpc::Client.new(options, 3)

  response_body = sync_client.publish('request_topic', 'message', 'response_topic')
```
