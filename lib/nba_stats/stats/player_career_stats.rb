require 'nba_stats/resources/player_career_stats'

module NbaStats

  module PlayerCareerStats

    # The path of the playercareerstats API
    PLAYER_CAREER_STATS_PATH   = '/stats/playercareerstats'

    # Calls the playercareerstats API and returns a PlayerCareerStats resource.
    #
    # @param player_id [Integer]
    # @param per_mode [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::PlayerCareerStats]
    def player_career_stats(
        player_id,
        per_mode=NbaStats::Constants::PER_MODE_TOTALS,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::PlayerCareerStats.new(
          get(PLAYER_CAREER_STATS_PATH, {
              :PlayerID => player_id,
              :LeagueID => league_id,
              :PerMode => per_mode
          })
      )
    end

  end # PlayerCareerStats

end