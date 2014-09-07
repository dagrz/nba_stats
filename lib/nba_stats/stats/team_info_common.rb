require 'nba_stats/resources/team_info_common'

module NbaStats

  module TeamInfoCommon

    # The path of the teaminfocommon API
    TEAM_INFO_COMMON_PATH   = '/stats/teaminfocommon'

    # Calls the teaminfocommon API and returns a TeamInfoCommon resource.
    #
    # @param season [String]
    # @param season_type [String]
    # @param league_id [String]
    # @param team_id [Integer]
    # @return [NbaStats::Resources::TeamInfoCommon]
    def team_info_common(season='2013-14', season_type='Regular Season', league_id=NbaStats::Configuration::DEFAULT_LEAGUE_ID, team_id=1)
    NbaStats::Resources::TeamInfoCommon.new(
        get(TEAM_INFO_COMMON_PATH, {
            :Season => season,
            :SeasonType => season_type,
            :LeagueID => league_id,
            :TeamID => team_id
        })
    )
    end

  end # TeamInfoCommon

end
