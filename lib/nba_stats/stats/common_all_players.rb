require 'nba_stats/resources/common_all_players'
require 'nba_stats/constants'

module NbaStats

  module CommonAllPlayers

    # The path of the commonallplayers API
    COMMON_ALL_PLAYERS_PATH   = '/stats/commonallplayers'

    # Calls the commonallplayers API and returns a CommonAllPlayers resource.
    #
    # @param season [String]
    # @param is_only_current_season [Integer]
    # @param league_id [String]
    # @return [NbaStats::Resources::CommonAllPlayers]
    def common_all_players(
        season,
        is_only_current_season=0,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
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