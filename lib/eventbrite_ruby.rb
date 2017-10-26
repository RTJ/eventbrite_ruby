require 'faraday'
require 'faraday_middleware'
require 'json'
require 'active_support/core_ext/hash/indifferent_access'

require 'eventbrite_ruby/version'
require 'eventbrite_ruby/client'
require 'eventbrite_ruby/events'

module EventbriteRuby
  class << self
    attr_accessor :personal_key
  end

  self.personal_key ||= ENV['EVENTBRITE_PERSONAL_KEY']
end
