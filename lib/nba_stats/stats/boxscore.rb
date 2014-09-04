require 'nba_stats/resources/boxscore'

module NbaStats

  module Boxscore

    # The path of the boxscore API
    BOXSCORE_PATH   = '/stats/boxscore'

    # Calls the boxscore API and returns a scoreboard resource.
    #
    # @param game_id [String]
    # @param range_type [Integer]
    # @param start_period [Integer]
    # @param end_period [Integer]
    # @param start_range [Integer]
    # @param end_range [Integer]
    # @return [NbaStats::Resources::Boxscore]
    def boxscore(game_id='0000000001', range_type=0, start_period=0, end_period=0, start_range=0, end_range=0)
      NbaStats::Resources::Boxscore.new(
          get(BOXSCORE_PATH, {
              :GameID => game_id,
              :RangeType => range_type,
              :StartPeriod => start_period,
              :EndPeriod => end_period,
              :StartRange => start_range,
              :EndRange => end_range
          })
      )
    end

  end # Boxscore

end