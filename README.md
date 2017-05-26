# LineSender

Send LINE message from terminal

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'line_sender'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install line_sender

## Usage

```bash
$ line_sender
```

and help
```bash
$ line_sender --help
Usage: line_sender [options]
    -u, --user VALUE                 target user
    -s, --channel_secret VALUE       channel_secret
    -t, --channel_token VALUE        channel_token
    -f, --file VALUE                 config file
```

Example config file(yaml format)
```yaml
channel_secret: "channel_secret"
channel_token: "channel_token"
user: "user"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/flum1025/line_sender. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

