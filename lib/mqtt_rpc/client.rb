require 'mqtt'

module MQTTRpc
  class Client
    def initialize(options = {}, timeout = 10)
      @options = options
      @timeout = timeout
    end

    def connect
      MQTT::Client.connect(@options)
    end

    def ready
      @subscribe_connect = connect
      @publish_connect = connect
    end

    def publish(publish_topic, message, subscribe_topic)
      ready

      @subscribe_connect.subscribe(subscribe_topic)
      @publish_connect.publish(publish_topic, message)
      begin
        Timeout.timeout(@timeout) do
          @subscribe_connect.get do |_topic, payload|
            @payload = payload
            break
          end
        end
      rescue
        raise TimeoutException
      ensure
        destroy
      end

      @payload
    end

    def destroy
      @subscribe_connect.disconnect
      @publish_connect.disconnect
    end
  end
end
