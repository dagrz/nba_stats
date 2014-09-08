require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class DraftCombineNonStationaryShooting < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :results    # :temp_player_id, :player_id, :first_name, :last_name, :player_name, :position, :off_drib_fifteen_break_left_made, :off_drib_fifteen_break_left_attempt, :off_drib_fifteen_break_left_pct, :off_drib_fifteen_top_key_made, :off_drib_fifteen_top_key_attempt, :off_drib_fifteen_top_key_pct, :off_drib_fifteen_break_right_made, :off_drib_fifteen_break_right_attempt, :off_drib_fifteen_break_right_pct, :off_drib_college_break_left_made, :off_drib_college_break_left_attempt, :off_drib_college_break_left_pct, :off_drib_college_top_key_made, :off_drib_college_top_key_attempt, :off_drib_college_top_key_pct, :off_drib_college_break_right_made, :off_drib_college_break_right_attempt, :off_drib_college_break_right_pct, :on_move_fifteen_made, :on_move_fifteen_attempt, :on_move_fifteen_pct, :on_move_college_made, :on_move_college_attempt, :on_move_college_pct,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # DraftCombineNonStationaryShooting

  end

end