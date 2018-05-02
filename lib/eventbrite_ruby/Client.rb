module EventbriteRuby
  class Client
    attr_accessor :personal_key

    def initialize(personal_key: nil)
      @personal_key = personal_key || EventbriteRuby.personal_key
    end

    def connection
      @connection ||= begin
        Faraday.new(:url => 'https://www.eventbriteapi.com/') do |faraday|
          faraday.authorization :Bearer, @personal_key
          faraday.response :json, :content_type => /\bjson$/
          faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
        end
      end
    end

    def post(url, data = {})
      if data[:continuation].present?
        url = "#{url}?continuation=#{data[:continuation]}"
        data.delete(:continuation)
      end
      connection.post do |req|
        req.url url
        req.headers['Content-Type'] = 'application/json'
        req.body = data.to_json
      end
    end

    def get(url, data = {})
      if data[:continuation].present?
        url = "#{url}?continuation=#{data[:continuation]}"
        data.delete(:continuation)
      end
      connection.get do |req|
        req.url url
        req.headers['Content-Type'] = 'application/json'
        req.body = data.to_json
      end
    end
  end
end
