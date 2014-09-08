require 'nba_stats/resources/box_score_advanced'

module NbaStats

  module BoxScoreAdvanced

    # The path of the boxscoreadvanced API
    BOX_SCORE_ADVANCED_PATH   = '/stats/boxscoreadvanced'

    # Calls the boxscoreadvanced API and returns a BoxScoreAdvanced resource.
    #
    # @param game_id [String]
    # @param range_type [Integer]
    # @param start_period [Integer]
    # @param end_period [Integer]
    # @param start_range [Integer]
    # @param end_range [xxxxxxxxxx]
    # @return [NbaStats::Resources::BoxScoreAdvanced]
    def box_score_advanced(
        game_id,
        range_type=0,
        start_period=0,
        end_period=0,
        start_range=0,
        end_range=0
    )
      NbaStats::Resources::BoxScoreAdvanced.new(
          get(BOX_SCORE_ADVANCED_PATH, {
              :GameID => game_id,
              :RangeType => range_type,
              :StartPeriod => start_period,
              :EndPeriod => end_period,
              :StartRange => start_range,
              :EndRange => end_range
          })
      )
    end

  end # BoxScoreAdvanced

end