require 'bundler/setup'
require 'minitest/autorun'
require 'mqtt_rpc'

class TestClient < Minitest::Test
  describe 'connect' do
    before do
    end

    it 'request' do
      @options = {
        host: '127.0.0.1',
        port: 1883,
        username: 'guest',
        password: 'guest'
      }
      client = MQTTRpc::Client.new(@options, 100)
      client.publish('request_topic', 'message', 'response_topic')
    end

    it 'response' do
      @options = {
        host: '127.0.0.1',
        port: 1883,
        username: 'guest',
        password: 'guest'
      }

      client = MQTT::Client.connect(@options)
      client.publish('response_topic', 'message')
    end
  end
end
