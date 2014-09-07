require 'nba_stats/resources/common_team_years'

module NbaStats

  module CommonTeamYears

    # The path of the commonteamyears API
    COMMON_TEAM_YEARS_PATH   = '/stats/commonteamyears'

    # Calls the commonteamyears API and returns a CommonTeamYears resource.
    #
    # @param league_id [String]
    # @return [NbaStats::Resources::CommonTeamYears]
    def common_team_years(
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::CommonTeamYears.new(
          get(COMMON_TEAM_YEARS_PATH, {
              :LeagueID => league_id
          })
      )
    end

  end # CommonTeamYears

end