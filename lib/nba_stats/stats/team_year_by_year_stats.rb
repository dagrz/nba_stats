require 'nba_stats/resources/team_year_by_year_stats'

module NbaStats

  module TeamYearByYearStats

    # The path of the teamyearbyyearstats API
    TEAM_YEAR_BY_YEAR_STATS_PATH   = '/stats/teamyearbyyearstats'

    # Calls the teamyearbyyearstats API and returns a TeamYearByYearStats resource.
    #
    # @param team_id [Integer]
    # @param season [String]
    # @param per_mode [String]
    # @param season_type [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::TeamYearByYearStats]
    def team_year_by_year_stats(
        team_id,
        season,
        per_mode=NbaStats::Constants::PER_MODE_TOTALS,
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::TeamYearByYearStats.new(
          get(TEAM_YEAR_BY_YEAR_STATS_PATH, {
              :LeagueID => league_id,
              :PerMode => per_mode,
              :SeasonType => season_type,
              :TeamID => team_id,
              :Season => season
          })
      )
    end

  end # TeamYearByYearStats

end