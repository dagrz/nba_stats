require 'nba_stats/resources/team_info_common'
require 'nba_stats/constants'

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
    def team_info_common(
        season='2013-14',
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA,
        team_id=1
    )
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
