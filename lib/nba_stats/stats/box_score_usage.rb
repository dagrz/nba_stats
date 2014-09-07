require 'nba_stats/resources/box_score_usage'

module NbaStats

  module BoxScoreUsage

    # The path of the boxscoreusage API
    BOX_SCORE_USAGE_PATH   = '/stats/boxscoreusage'

    # Calls the boxscoreusage API and returns a BoxScoreUsage resource.
    #
    # @param game_id [String]
    # @param range_type [Integer]
    # @param start_period [Integer]
    # @param end_period [Integer]
    # @param start_range [Integer]
    # @param end_range [Integer]
    # @return [NbaStats::Resources::BoxScoreUsage]
    def box_score_usage(
        game_id,
        range_type=0,
        start_period=0,
        end_period=0,
        start_range=0,
        end_range=0
    )
      NbaStats::Resources::BoxScoreUsage.new(
          get(BOX_SCORE_USAGE_PATH, {
              :GameID => game_id,
              :RangeType => range_type,
              :StartPeriod => start_period,
              :EndPeriod => end_period,
              :StartRange => start_range,
              :EndRange => end_range
          })
      )
    end

  end # BoxScoreUsage

end