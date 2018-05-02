module EventbriteRuby
  class Order
    class << self

      # Gets an order by ID an order object.
      def find(params = {})
        client.get("v3/orders/", params)
      end

      private

      def client
        EventbriteRuby::Client.new
      end

    end
  end
end
