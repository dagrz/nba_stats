require 'nba_stats/resources/player_profile'

module NbaStats

  module PlayerProfile

    # The path of the playerprofile API
    PLAYER_PROFILE_PATH   = '/stats/playerprofile'

    # Calls the playerprofile API and returns a PlayerProfile resource.
    #
    # @param season [String]
    # @param season_type [String]
    # @param league_id [String]
    # @param player_id [Integer]
    # @param graph_start_season [String]
    # @param graph_end_season [String]
    # @param graph_stat [String]
    # @return [NbaStats::Resources::PlayerProfile]
    def player_profile(season='2013-14', season_type='Regular Season', league_id=NbaStats::Configuration::DEFAULT_LEAGUE_ID, player_id=1, graph_start_season='2008-09', graph_end_season='2014-15', graph_stat='PTS')
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