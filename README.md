# NbaStats

A ruby interface for the NBA.com stats JSON API.

## Installation

Add this line to your application's Gemfile:

    gem 'nba_stats'

## Usage

To get started, create a new client:

    require 'nba_stats'

    client = NbaStats::Client.new

Use the client to call a function, which returns a resource:

    # my_resource = client.an_nba_stats_function
    cpi_resource = client.common_player_info(201567)

Get the result set array you want to use:

    # my_result_set = my_resource.a_resource_result_set
    phs = cpi_resource.player_headline_stats

Get a row from the result set:

    # my_row = my_result_set[0]
    row = phs[0]

Get an item value from the row:

    # my_item = my_row[:an_item_name]
    item = row[:player_name]

Examples of available functions:

    # Get today's scoreboard
    scoreboard = client.scoreboard('00', Date.today, 0)

    # Get box score for game 1
    box_score = client.box_score('0000000001', 0, 0, 0, 0, 0)

    # Get a list of players for the 2013-14 season
    common_all_players = client.common_all_players('00', '2013-14', 0)

    # Get some basic info about Kevin Love
    common_player_info = client.common_player_info(201567, 'Regular Season', '00')
