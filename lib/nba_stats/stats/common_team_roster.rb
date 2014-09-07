require 'nba_stats/resources/common_team_roster'

module NbaStats

  module CommonTeamRoster

    # The path of the commonteamroster API
    COMMON_TEAM_ROSTER_PATH   = '/stats/commonteamroster'

    # Calls the commonteamroster API and returns a CommonTeamRoster resource.
    #
    # @param season [String]
    # @param league_id [String]
    # @param team_id [Integer]
    # @return [NbaStats::Resources::CommonTeamRoster]
    def common_team_roster(season='2013-14', league_id=NbaStats::Configuration::DEFAULT_LEAGUE_ID, team_id=1)
      NbaStats::Resources::CommonTeamRoster.new(
          get(COMMON_TEAM_ROSTER_PATH, {
              :Season => season,
              :LeagueID => league_id,
              :TeamID => team_id
          })
      )
    end

  end # CommonTeamRoster

end