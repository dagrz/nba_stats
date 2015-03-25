require 'nba_stats/resources/player_game_log'

module NbaStats

  module PlayerGameLog

    # The path of the playergamelog API
    PLAYER_GAME_LOG_PATH   = '/stats/playergamelog'

    # Calls the playergamelog API and returns a PlayerGameLog resource.
    #
    # @param league_id [String]
    # @param player_id [Integer]
    # @param season [String]
    # @param season_type [String]
    # @return [NbaStats::Resources::PlayerGameLog]
    def player_game_log(
        player_id,
        season,
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::PlayerGameLog.new(
        get(PLAYER_GAME_LOG_PATH, {
            :Season => season,
            :LeagueID => league_id,
            :PlayerID => player_id,
            :SeasonType => season_type
        })
    )
    end

  end # PlayerGameLog

end