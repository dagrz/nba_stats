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
    scoreboard = client.scoreboard(NbaStats::Configuration::DEFAULT_LEAGUE_ID, Date.today, 0)

    # Get box score for game 1
    box_score = client.box_score('0000000001', 0, 0, 0, 0, 0)

    # Get a list of players for the 2013-14 season
    common_all_players = client.common_all_players(NbaStats::Configuration::DEFAULT_LEAGUE_ID, '2013-14', 0)
