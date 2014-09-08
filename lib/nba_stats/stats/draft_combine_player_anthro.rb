require 'nba_stats/resources/draft_combine_player_anthro'

module NbaStats

  module DraftCombinePlayerAnthro

    # The path of the draftcombineplayeranthro API
    DRAFT_COMBINE_PLAYER_ANTHRO_PATH   = '/stats/draftcombineplayeranthro'

    # Calls the draftcombineplayeranthro API and returns a DraftCombinePlayerAnthro resource.
    #
    # @param season_year [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::DraftCombinePlayerAnthro]
    def draft_combine_player_anthro(
        season_year,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::DraftCombinePlayerAnthro.new(
          get(DRAFT_COMBINE_PLAYER_ANTHRO_PATH, {
              :LeagueID => league_id,
              :SeasonYear => season_year
          })
      )
    end

  end # DraftCombinePlayerAnthro

end