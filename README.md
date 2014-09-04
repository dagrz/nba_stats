# NbaStats

A ruby interface for the NBA.com stats JSON API.

## Installation

Add this line to your application's Gemfile:

    gem 'nba_stats'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nba_stats

## Usage

    require 'nba_stats'

    client = NbaStats::Client.new

    # Get today's scoreboard
    scoreboard = client.scoreboard
    boxscore = client.boxscore
