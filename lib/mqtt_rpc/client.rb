require 'mqtt'

module MQTTRpc
  class Client
    def initialize(options = {})
      @options = options
    end

    def connect
      MQTT::Client.connect(@options)
    end

    def publish(publish_topic, message, subscribe_topic)
      subscribe_connect = connect
      subscribe_connect.subscribe(subscribe_topic)

      publish_connect = connect
      publish_connect.publish(publish_topic, message)

      subscribe_connect.get do |_topic, message|
        @payload = message
        break
      end

      subscribe_connect.disconnect
      publish_connect.disconnect

      @payload
    end
  end
end
