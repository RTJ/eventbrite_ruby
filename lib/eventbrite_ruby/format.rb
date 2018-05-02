module EventbriteRuby
  class Format
    class << self

      def all(params = {})
        client.get("v3/formats/", params)
      end

      def find(params = {})
        client.get("v3/formats/", params)
      end

      private

      def client
        EventbriteRuby::Client.new
      end

    end
  end
end
