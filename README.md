# CSSminify [![Build Status](https://secure.travis-ci.org/matthiassiegel/cssminify.png)](http://travis-ci.org/matthiassiegel/cssminify)

CSS minification with YUI compressor, but as native Ruby port.

The CSSminify gem provides CSS compression using YUI compressor. Instead of wrapping around the Java or Javascript version of YUI compressor it uses a native [Ruby port](https://github.com/matthiassiegel/cssmin) of the CSS engine. Therefore this gem has no dependencies.

In basic benchmarks the Ruby version performed about as good as the Java jar. It currently passes all CSS test cases included with the YUI compressor Java source code.

Main motivation for the Ruby port and this gem was to reduce dependencies like Java.

## Installation
Install CSSminify from RubyGems:

    gem install cssminify

Or include it in your project's Gemfile:

    gem 'cssminify'

## Usage

    require 'cssminify'
    
    CSSminify.compress('/* a comment */ .test { display: block; }')
    # => minified CSS
    
    CSSminify.compress(File.read('path/to/styles.css'))
    # => minified CSS
    
    CSSminify.compress(File.open('path/to/styles.css'))
    # => minified CSS
    
    # Alternatively use instance method...
    compressor = CSSminify.new
    compressor.compress(File.read("path/to/styles.css"))
    # => minified CSS

Files or strings are acceptable as input.

You can pass in a second argument to control the maximum output line length (default 5000 characters):

    CSSminify.compress(File.read("path/to/styles.css"), 200)

Note: in most cases line length will only be approximated.

## Rails asset pipeline
Rails 3.1 integrated [Sprockets](https://github.com/sstephenson/sprockets) to provide asset packaging and minimising out of the box. For CSS compression it relies on the [yui-compressor gem](https://github.com/sstephenson/ruby-yui-compressor) which requires Java. To use CSSminify instead, edit your config/application.rb file:

    config.assets.css_compressor = CSSminify.new

## Compatibility
Tested with Ruby 1.9.2, 1.9.3, jruby-19mode, rbx-19mode

## Changelog
See [CHANGES](https://github.com/matthiassiegel/cssminify/blob/master/CHANGES.md).

## Copyright

### CSSminify gem and documentation
Copyright (c) 2012 Matthias Siegel (matthias.siegel@gmail.com)
See [LICENSE](https://github.com/matthiassiegel/cssminify/blob/master/LICENSE.md) for details.

### YUI compressor
See [file](https://github.com/matthiassiegel/cssminify/blob/master/lib/cssminify/cssmin.rb).