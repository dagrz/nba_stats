require 'nba_stats/resources/common_all_players'

module NbaStats

  module CommonAllPlayers

    # The path of the commonallplayers API
    COMMON_ALL_PLAYERS_PATH   = '/stats/commonallplayers'

    # Calls the commonallplayers API and returns a CommonAllPlayers resource.
    #
    # @param league_id [String]
    # @param season [String]
    # @param is_only_current_season [Integer]
    # @return [NbaStats::Resources::CommonAllPlayers]
    def common_all_players(league_id=NbaStats::Configuration::DEFAULT_LEAGUE_ID, season='2013-14', is_only_current_season=0)
      NbaStats::Resources::CommonAllPlayers.new(
          get(COMMON_ALL_PLAYERS_PATH, {
              :LeagueID => league_id,
              :Season => season,
              :IsOnlyCurrentSeason => is_only_current_season
          })
      )
    end

  end # CommonAllPlayers

end