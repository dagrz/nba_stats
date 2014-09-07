require 'nba_stats/resources/play_by_play'

module NbaStats

  module PlayByPlay

    # The path of the playbyplay API
    PLAY_BY_PLAY_PATH   = '/stats/playbyplay'

    # Calls the playbyplay API and returns a PlayByPlay resource.
    #
    # @param game_id [String]
    # @param start_period [Integer]
    # @param end_period [Integer]
    # @return [NbaStats::Resources::PlayByPlay]
    def play_by_play(
        game_id,
        start_period=0,
        end_period=0
    )
      NbaStats::Resources::PlayByPlay.new(
          get(PLAY_BY_PLAY_PATH, {
              :GameID => game_id,
              :StartPeriod => start_period,
              :EndPeriod => end_period
          })
      )
    end

  end # PlayByPlay

end