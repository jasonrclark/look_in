# LookIn
One of the things I miss from C# is being able to take a whole namespace of
classes and say "Act like these are local in this scope."

look_in fixes that.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'look_in'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install look_in

## Usage

Use look_in within your classes and modules to define other module namespaces
that you want to refer to implicitly:

```
module Somewhere
  class Else
  end
end

module Home
  look_in Somewhere

  def working
    Else.new
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release` to create a git tag for the version, push git
commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/jasonrclark/look_in/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
