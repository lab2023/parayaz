# Parayaz

Turkish number to text money according to [TDK][1000]

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'parayaz'
```

And then execute:

    $ bundle

Or

    $ bundle install --path=vendor/bundle

Or install it yourself as:

    $ gem install parayaz

## Tests

Use `rake test` or `bundle exec rake test` to run specs.

## Usage
```ruby
> 123.parayaz
# yüzyirmiüçTL

> 123.55.parayaz
# yüzyirmiüçTL,ellibeşkr
```

## Contributing

1. Fork it ( https://github.com/lab2023/parayaz/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Credits

![lab2023](http://lab2023.com/assets/images/named-logo.png)

- BinChecker is maintained and funded by [lab2023 - information technologies](http://lab2023.com/)
- Thank you to all the [contributors!](https://github.com/kebab-project/kangal/graphs/contributors)
- The names and logos for lab2023 are trademarks of lab2023, inc.

## License

Copyright 2014 lab2023 - information technologies

[1000]: http://www.tdk.gov.tr/index.php?option=com_content&view=article&id=182:Sayilarin-