# Arukamo

[![Build Status](https://travis-ci.org/cyril/arukamo.rb.svg?branch=master)](https://travis-ci.org/cyril/arukamo.rb)
[![Dependency Status](https://gemnasium.com/cyril/arukamo.rb.svg)](https://gemnasium.com/cyril/arukamo.rb)
[![Gem Version](http://img.shields.io/gem/v/arukamo.svg)](https://rubygems.org/gems/arukamo)
[![Inline docs](http://inch-ci.org/github/cyril/arukamo.rb.svg?branch=master)](http://inch-ci.org/github/cyril/arukamo.rb)
[![Documentation](http://img.shields.io/:yard-docs-38c800.svg)](http://rubydoc.info/gems/arukamo/frames)

> あるかも？！

## Rubies

* [MRI](https://www.ruby-lang.org/)
* [Rubinius](http://rubini.us/)
* [JRuby](http://jruby.org/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'arukamo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arukamo

## Usage

Because the parent class of all classes, `BasicObject`, is an explicit blank class, each of its instances SHOULD be considered as a null object.

Also, an object exists if all of the following methods MAY return `false`:

* `nil?`
* `blank?`
* `empty?`
* `equal?(false)`
* `public_methods(false).empty?`
* `zero?`

When an object exists, the `#aru?` method returns `true`. Otherwise, `false`.
`#nai?` is the opposite.

```ruby
BasicObject.new.aru?  # => false
nil.nai?              # => true
''.aru?               # => false
42.aru?               # => true
0.0.aru?              # => false
[].aru?               # => false
{}.aru?               # => false
```

## Versioning

__Arukamo__ follows [Semantic Versioning 2.0](http://semver.org/).

## Contributing

1. [Fork it](https://github.com/cyril/arukamo/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

See `LICENSE.md` file.
