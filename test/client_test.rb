require 'bundler/setup'
require 'minitest/autorun'
require 'mqtt_rpc'

class TestClient < Minitest::Test
  describe 'connect' do
    before do
      @options = {
        host: '127.0.0.1',
        port: 1883,
        username: 'guyifeng',
        password: 'password'
      }
    end

    it 'request' do
    end
  end
end
