# NbaStats

A ruby interface for the NBA.com stats JSON API.

## Author

https://twitter.com/dagrz

## Installation

Add this line to your application's Gemfile:

    gem 'nba_stats'

## Usage

To get started, create a new client:

    require 'nba_stats'

    client = NbaStats::Client.new

Use the client to call a function, which returns a resource:

    my_resource = client.an_nba_stats_function

Get the result set array you want to use:

    my_result_set = my_resource.a_resource_result_set

Get a row from the result set:

    my_row = my_result_set[0]

Get an item value from the row:

    my_item = my_row[:an_item_name]

List of available functions:

    # client.
    scoreboard
    box_score
    box_score_four_factors
    box_score_usage
    box_score_scoring
    box_score_misc
    box_score_advanced
    common_all_players
    common_player_info
    player_profile
    player_career_stats
    team_info_common
    common_team_roster
    team_game_log
    team_year_by_year_stats
    common_team_years
    franchise_history
    shot_chart_detail
    play_by_play
    league_dash_lineups
    league_dash_player_stats
    home_page_leaders
    draft_combine_player_anthro
    draft_combine_drill_results
    draft_combine_non_stationary_shooting
    draft_combine_spot_shooting
    draft_combine_stats
