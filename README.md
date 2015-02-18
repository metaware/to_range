# to_range [![Code Climate](https://codeclimate.com/github/metaware/to_range/badges/gpa.svg)](https://codeclimate.com/github/metaware/to_range) [![Build Status](https://travis-ci.org/metaware/to_range.svg?branch=master)](https://travis-ci.org/metaware/to_range)

![to_range Logo](https://raw.github.com/metaware/to_range/master/to_range.png)

Ruby Gem to Convert strings (parsable) into Range Objects

## Usage

    irb(main):001:0> "1..10".to_range
    => 1..10
    => PROFIT!

For any ambiguous cases, where there might be multiple matches of a possible range, This library assumes you need only the first possible, valid-looking Range match, ex:

    irb(main):001:0> "1.10..50..100".to_range
    => 10..50

**PS: It blows on your face, if it's unable to find a possible parsable match.**

## Installation

Add this line to your application's Gemfile:

    gem 'to_range'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install to_range

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request