require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class DraftCombineSpotShooting < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :results    # :temp_player_id, :player_id, :first_name, :last_name, :player_name, :position, :fifteen_corner_left_made, :fifteen_corner_left_attempt, :fifteen_corner_left_pct, :fifteen_break_left_made, :fifteen_break_left_attempt, :fifteen_break_left_pct, :fifteen_top_key_made, :fifteen_top_key_attempt, :fifteen_top_key_pct, :fifteen_break_right_made, :fifteen_break_right_attempt, :fifteen_break_right_pct, :fifteen_corner_right_made, :fifteen_corner_right_attempt, :fifteen_corner_right_pct, :college_corner_left_made, :college_corner_left_attempt, :college_corner_left_pct, :college_break_left_made, :college_break_left_attempt, :college_break_left_pct, :college_top_key_made, :college_top_key_attempt, :college_top_key_pct, :college_break_right_made, :college_break_right_attempt, :college_break_right_pct, :college_corner_right_made, :college_corner_right_attempt, :college_corner_right_pct, :nba_corner_left_made, :nba_corner_left_attempt, :nba_corner_left_pct, :nba_break_left_made, :nba_break_left_attempt, :nba_break_left_pct, :nba_top_key_made, :nba_top_key_attempt, :nba_top_key_pct, :nba_break_right_made, :nba_break_right_attempt, :nba_break_right_pct, :nba_corner_right_made, :nba_corner_right_attempt, :nba_corner_right_pct,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # DraftCombineSpotShooting

  end

end