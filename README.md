# lita-asknicely

[![Build Status](https://img.shields.io/travis/esigler/lita-asknicely/master.svg)](https://travis-ci.org/esigler/lita-asknicely)
[![MIT License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://tldrlegal.com/license/mit-license)
[![RubyGems](http://img.shields.io/gem/v/lita-asknicely.svg)](https://rubygems.org/gems/lita-asknicely)
[![Coveralls Coverage](https://img.shields.io/coveralls/esigler/lita-asknicely/master.svg)](https://coveralls.io/r/esigler/lita-asknicely)
[![Code Climate](https://img.shields.io/codeclimate/github/esigler/lita-asknicely.svg)](https://codeclimate.com/github/esigler/lita-asknicely)
[![Gemnasium](https://img.shields.io/gemnasium/esigler/lita-asknicely.svg)](https://gemnasium.com/esigler/lita-asknicely)

A Asknice.ly plugin for Lita

## Installation

Add lita-asknicely to your Lita instance's Gemfile:

``` ruby
gem 'lita-asknicely'
```

## Configuration

Add the following to your Lita configuration:

```
config.handlers.asknicely.domain = 'yourdomain'
config.handlers.asknicely.api_key = 'yourapikey'
```

## Usage

Examples:

```
nps   - Show the NPS for the last 30 days
nps [0-30] - Show the NPS for the last specified number of days
```