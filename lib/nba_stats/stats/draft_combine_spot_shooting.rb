require 'nba_stats/resources/draft_combine_spot_shooting'

module NbaStats

  module DraftCombineSpotShooting

    # The path of the draftcombinespotshooting API
    DRAFT_COMBINE_SPOT_SHOOTING_PATH   = '/stats/draftcombinespotshooting'

    # Calls the draftcombinespotshooting API and returns a DraftCombineSpotShooting resource.
    #
    # @param season_year [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::DraftCombineSpotShooting]
    def draft_combine_spot_shooting(
        season_year,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::DraftCombineSpotShooting.new(
          get(DRAFT_COMBINE_SPOT_SHOOTING_PATH, {
              :LeagueID => league_id,
              :SeasonYear => season_year
          })
      )
    end

  end # DraftCombineSpotShooting

end