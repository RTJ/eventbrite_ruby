module EventbriteRuby
  class Event
    class << self

      # Allows you to retrieve a paginated response of public event objects from across Eventbrite’s directory
      def search(params = {})
        client.get("v3/events/search/", params)
      end

      # Makes a new event, and returns an event for the specified event. Does not support the creation of repeating event series.
      def create(params = {})
        client.post("v3/events/", params)
      end

      # Updates an event. Returns an event for the specified event. Does not support updating a repeating event series parent (see POST /series/:id/).
      def find(params = {})
        client.get("v3/events/", params)
      end

      def update_event(params = {})
        client.post("v3/events/", params)
      end

      private

      def client
        EventbriteRuby::Client.new
      end

    end
  end
end
