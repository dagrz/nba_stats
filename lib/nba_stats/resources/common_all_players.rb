require 'nba_stats/resources/resource_base'

module NbaStats

  module Resources

    class CommonAllPlayers < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :common_all_players   # :person_id, :display_last_comma_first, :rosterstatus, :from_year, :to_year, :playercode
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # CommonAllPlayers

  end

end
