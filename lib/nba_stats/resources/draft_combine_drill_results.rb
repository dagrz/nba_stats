require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class DraftCombineDrillResults < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :results    # :temp_player_id, :player_id, :first_name, :last_name, :player_name, :position, :standing_vertical_leap, :max_vertical_leap, :lane_agility_time, :modified_lane_agility_time, :three_quarter_sprint,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # DraftCombineDrillResults

  end

end