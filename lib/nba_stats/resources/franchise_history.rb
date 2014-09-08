require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class FranchiseHistory < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :franchise_history,   # :league_id, :team_id, :team_city, :team_name, :start_year, :end_year, :years, :games, :wins, :losses, :win_pct, :po_appearances, :div_titles, :conf_titles, :league_titles,
          :defunct_teams        # :league_id, :team_id, :team_city, :team_name, :start_year, :end_year, :years, :games, :wins, :losses, :win_pct, :po_appearances, :div_titles, :conf_titles, :league_titles,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # FranchiseHistory

  end

end
