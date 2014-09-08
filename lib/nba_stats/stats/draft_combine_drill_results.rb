require 'nba_stats/resources/draft_combine_drill_results'

module NbaStats

  module DraftCombineDrillResults

    # The path of the draftcombinedrillresults API
    DRAFT_COMBINE_DRILL_RESULTS_PATH   = '/stats/draftcombinedrillresults'

    # Calls the draftcombinedrillresults API and returns a DraftCombineDrillResults resource.
    #
    # @param season_year [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::DraftCombineDrillResults]
    def draft_combine_drill_results(
        season_year,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::DraftCombineDrillResults.new(
          get(DRAFT_COMBINE_DRILL_RESULTS_PATH, {
              :LeagueID => league_id,
              :SeasonYear => season_year
          })
      )
    end

  end # DraftCombineDrillResults

end