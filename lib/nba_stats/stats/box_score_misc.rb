require 'nba_stats/resources/box_score_misc'

module NbaStats

  module BoxScoreMisc

    # The path of the boxscoremisc API
    BOX_SCORE_MISC_PATH   = '/stats/boxscoremisc'

    # Calls the boxscoremisc API and returns a BoxScoreMisc resource.
    #
    # @param game_id [String]
    # @param range_type [Integer]
    # @param start_period [Integer]
    # @param end_period [Integer]
    # @param start_range [Integer]
    # @param end_range [Integer]
    # @return [NbaStats::Resources::BoxScoreMisc]
    def box_score_misc(
        game_id,
        range_type=0,
        start_period=0,
        end_period=0,
        start_range=0,
        end_range=0
    )
      NbaStats::Resources::BoxScoreMisc.new(
          get(BOX_SCORE_MISC_PATH, {
              :GameID => game_id,
              :RangeType => range_type,
              :StartPeriod => start_period,
              :EndPeriod => end_period,
              :StartRange => start_range,
              :EndRange => end_range
          })
      )
    end

  end # BoxScoreMisc

end