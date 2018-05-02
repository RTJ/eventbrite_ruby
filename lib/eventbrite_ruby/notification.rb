module EventbriteRuby
  class Notification
    class << self

      def all(params = {})
        client.get("v3/users/me/notifications/", params)
      end

      private

      def client
        EventbriteRuby::Client.new
      end

    end
  end
end
