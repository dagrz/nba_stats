require 'nba_stats/resources/resource_base'

module NbaStats

  module Resources

    class Scoreboard < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :game_header,
          :line_score,
          :series_standings,
          :last_meeting,
          :east_conf_standings_by_day,
          :west_conf_standings_by_day,
          :available
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # Scoreboard

  end

end
