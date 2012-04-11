# WordScramble

This gem is for generating real words from scrambled strings.
I wrote it to solve a puzzle that they passed out in the Virgin
Airlines waiting lounge when the flight was delayed.

## Installation

Add this line to your application's Gemfile:

    gem 'word_scramble'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install word_scramble

This has been tested on Ubuntu and OS X.

## Usage

You can use it from the command line, like this

    descramble <word>

Or you can call the Descrambler library directly

```ruby
descrambler = WordScramble::Descrambler.new("realapin")
descrambler.matching_words # => ["airplane", ... ]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
