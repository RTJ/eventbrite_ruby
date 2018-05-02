module EventbriteRuby
  class Media
    class << self

      def find(params = {})
        client.get("v3/media/", params)
      end

      def upload(params = {})
        client.post("v3//media/upload/", params)
      end

      private

      def client
        EventbriteRuby::Client.new
      end

    end
  end
end
