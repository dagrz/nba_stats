require 'nba_stats/resources/franchise_history'

module NbaStats

  module FranchiseHistory

    # The path of the franchisehistory API
    FRANCHISE_HISTORY_PATH   = '/stats/franchisehistory'

    # Calls the franchisehistory API and returns a FranchiseHistory resource.
    #
    # @param league_id [String]
    # @return [NbaStats::Resources::FranchiseHistory]
    def franchise_history(
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::FranchiseHistory.new(
          get(FRANCHISE_HISTORY_PATH, {
              :LeagueID => league_id
          })
      )
    end

  end # FranchiseHistory

end