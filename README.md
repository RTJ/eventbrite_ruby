# EventbriteRuby

**Ruby wrapper for Eventbrite REST API** 

## Installation

Add this line to your application's Gemfile:

```ruby
    gem 'eventbrite_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eventbrite_ruby

## Setup

Initialize the the gem by setting your personal OAuth token:

```
    EventbriteRuby.personal_key = 'your-personal-OAuth-token'
```

## Usage
The path "v3/events/search/?" can be replaced by any other path available in the Eventribe documentation:
https://www.eventbrite.es/developer/v3/

Post request:
```
    EventbriteRuby::Client.new.post("v3/events/search/?", {q: "madrid"})
```

Get request:
```
    EventbriteRuby::Client.new.get("v3/events/search/?", {q: "madrid"})
```

OR:
```
    path = "v3/events/search/?"
    params = {q: "Event Name",
              sort_by: 'best',
              price: 'free',
              # .....}
    EventbriteRuby::Client.new.post(path, params)
```


Search events:
``
    EventbriteRuby::Events.new.search({q: "Malaga", "location.address": "Malaga"})
    EventbriteRuby::Events.new.create({...})
    EventbriteRuby::Events.new.find({'ID')
    EventbriteRuby::Events.new.update_event({id: "...", "location.address": "Malaga"})

    # more will be added soon...
```
# Supported endpoints

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/RTJ/eventbrite_ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EventbriteRuby project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/eventbrite_ruby/blob/master/CODE_OF_CONDUCT.md).
