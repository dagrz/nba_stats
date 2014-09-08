require 'nba_stats/resources/draft_combine_stats'

module NbaStats

  module DraftCombineStats

    # The path of the draftcombinestats API
    DRAFT_COMBINE_STATS_PATH   = '/stats/draftcombinestats/'

    # Calls the draftcombinestats API and returns a DraftCombineStats resource.
    #
    # @param season_year [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::DraftCombineStats]
    def draft_combine_stats(
        season_year,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::DraftCombineStats.new(
          get(DRAFT_COMBINE_STATS_PATH, {
              :LeagueID => league_id,
              :SeasonYear => season_year
          })
      )
    end

  end # DraftCombineStats

end