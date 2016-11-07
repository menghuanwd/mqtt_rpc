# MQTTRpc

rabbitmq RPC on mqtt，轻量级通讯协议的同步请求

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

```
  require 'bunny_rpc'

  client = MQTTRpc::Client.new(options)

  response_body = client.publish('request_topic', 'message', 'response_topic')
```

