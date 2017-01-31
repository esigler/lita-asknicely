# lita-asknicely

[![Build Status](https://travis-ci.org/esigler/lita-asknicely.png?branch=master)](https://travis-ci.org/esigler/lita-asknicely)
[![Coverage Status](https://coveralls.io/repos/esigler/lita-asknicely/badge.png)](https://coveralls.io/r/esigler/lita-asknicely)

TODO: Add a description of the plugin.

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