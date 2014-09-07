require 'nba_stats/resources/box_score_four_factors'

module NbaStats

  module BoxScoreFourFactors

    # The path of the boxscorefourfactors API
    BOX_SCORE_FOUR_FACTORS_PATH   = '/stats/boxscorefourfactors'

    # Calls the boxscorefourfactors API and returns a BoxScoreFourFactors resource.
    #
    # @param game_id [String]
    # @param range_type [Integer]
    # @param start_period [Integer]
    # @param end_period [Integer]
    # @param start_range [Integer]
    # @param end_range [Integer]
    # @return [NbaStats::Resources::BoxScoreFourFactors]
    def box_score_four_factors(
        game_id,
        range_type=0,
        start_period=0,
        end_period=0,
        start_range=0,
        end_range=0
    )
      NbaStats::Resources::BoxScoreFourFactors.new(
          get(BOX_SCORE_FOUR_FACTORS_PATH, {
              :GameID => game_id,
              :RangeType => range_type,
              :StartPeriod => start_period,
              :EndPeriod => end_period,
              :StartRange => start_range,
              :EndRange => end_range
          })
      )
    end

  end # BoxScoreFourFactors

end