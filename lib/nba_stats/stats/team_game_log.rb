require 'nba_stats/resources/team_game_log'

module NbaStats

  module TeamGameLog

    # The path of the teamgamelog API
    TEAM_GAME_LOG_PATH   = '/stats/teamgamelog'

    # Calls the teamgamelog API and returns a TeamGameLog resource.
    #
    # @param season [String]
    # @param season_type [String]
    # @param league_id [String]
    # @param team_id [Integer]
    # @return [NbaStats::Resources::TeamGameLog]
    def team_game_log(season='2013-14', season_type='Regular Season', league_id=NbaStats::Configuration::DEFAULT_LEAGUE_ID, team_id=1)
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
