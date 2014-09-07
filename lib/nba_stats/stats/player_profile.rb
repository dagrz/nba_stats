require 'nba_stats/resources/player_profile'
require 'nba_stats/constants'

module NbaStats

  module PlayerProfile

    # The path of the playerprofile API
    PLAYER_PROFILE_PATH   = '/stats/playerprofile'

    # Calls the playerprofile API and returns a PlayerProfile resource.
    #
    # @param player_id [Integer]
    # @param season [String]
    # @param graph_start_season [String]
    # @param graph_end_season [String]
    # @param graph_stat [String]
    # @param season_type [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::PlayerProfile]
    def player_profile(
        player_id,
        season,
        graph_start_season,
        graph_end_season,
        graph_stat=NbaStats::Constants::GRAPH_STAT_POINTS,
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::PlayerProfile.new(
          get(PLAYER_PROFILE_PATH, {
              :Season => season,
              :SeasonType => season_type,
              :LeagueID => league_id,
              :PlayerID => player_id,
              :GraphStartSeason => graph_start_season,
              :GraphEndSeason => graph_end_season,
              :GraphStat => graph_stat
          })
      )
    end

  end # PlayerProfile

end