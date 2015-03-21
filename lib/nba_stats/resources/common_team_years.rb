require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class CommonTeamYears < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :team_years   # :league_id, :team_id, :min_year, :max_year, :abbreviation
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # CommonTeamYears

  end

end