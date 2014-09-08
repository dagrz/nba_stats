require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class DraftCombineStats < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :draft_combine_stats    # :season, :player_id, :first_name, :last_name, :player_name, :position, :height_wo_shoes, :height_wo_shoes_ft_in, :height_w_shoes, :height_w_shoes_ft_in, :weight, :wingspan, :wingspan_ft_in, :standing_reach, :standing_reach_ft_in, :body_fat_pct, :hand_length, :hand_width, :standing_vertical_leap, :max_vertical_leap, :lane_agility_time, :modified_lane_agility_time, :three_quarter_sprint, :spot_fifteen_corner_left, :spot_fifteen_break_left, :spot_fifteen_top_key, :spot_fifteen_break_right, :spot_fifteen_corner_right, :spot_college_corner_left, :spot_college_break_left, :spot_college_top_key, :spot_college_break_right, :spot_college_corner_right, :spot_nba_corner_left, :spot_nba_break_left, :spot_nba_top_key, :spot_nba_break_right, :spot_nba_corner_right, :off_drib_fifteen_break_left, :off_drib_fifteen_top_key, :off_drib_fifteen_break_right, :off_drib_college_break_left, :off_drib_college_top_key, :off_drib_college_break_right, :on_move_fifteen, :on_move_college,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # DraftCombineStats

  end

end