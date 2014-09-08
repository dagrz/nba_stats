require 'nba_stats/resources/draft_combine_non_stationary_shooting'

module NbaStats

  module DraftCombineNonStationaryShooting

    # The path of the draftcombinenonstationaryshooting API
    DRAFT_COMBINE_NON_STATIONARY_SHOOTING_PATH   = '/stats/draftcombinenonstationaryshooting/'

    # Calls the draftcombinenonstationaryshooting API and returns a DraftCombineNonStationaryShooting resource.
    #
    # @param season_year [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::DraftCombineNonStationaryShooting]
    def draft_combine_non_stationary_shooting(
        season_year,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::DraftCombineNonStationaryShooting.new(
          get(DRAFT_COMBINE_NON_STATIONARY_SHOOTING_PATH, {
              :LeagueID => league_id,
              :SeasonYear => season_year
          })
      )
    end

  end # DraftCombineNonStationaryShooting

end