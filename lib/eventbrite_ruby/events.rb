module EventbriteRuby
  class Events

    def initialize
      @client = EventbriteRuby::Client.new
    end

    def search(params)
      @client.get("v3/events/search/", params)
    end

    def create(params)
      @client.post("v3/events/", params)
    end

    def find(id)
      @client.get("v3/events/", {id: id})
    end

    def update_event(params)
      @client.post("v3/events/", params)
    end

  end
end
