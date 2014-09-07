require 'nba_stats/resources/team_game_log'
require 'nba_stats/constants'

module NbaStats

  module TeamGameLog

    # The path of the teamgamelog API
    TEAM_GAME_LOG_PATH   = '/stats/teamgamelog'

    # Calls the teamgamelog API and returns a TeamGameLog resource.
    #
    # @param team_id [Integer]
    # @param season [String]
    # @param season_type [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::TeamGameLog]
    def team_game_log(
        team_id,
        season,
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::TeamGameLog.new(
          get(TEAM_GAME_LOG_PATH, {
              :Season => season,
              :SeasonType => season_type,
              :LeagueID => league_id,
              :TeamID => team_id
          })
      )
    end

  end # TeamGameLog

end
