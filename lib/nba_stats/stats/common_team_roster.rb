require 'nba_stats/resources/common_team_roster'
require 'nba_stats/constants'

module NbaStats

  module CommonTeamRoster

    # The path of the commonteamroster API
    COMMON_TEAM_ROSTER_PATH   = '/stats/commonteamroster'

    # Calls the commonteamroster API and returns a CommonTeamRoster resource.
    #
    # @param team_id [Integer]
    # @param season [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::CommonTeamRoster]
    def common_team_roster(
        team_id,
        season,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
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