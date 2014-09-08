require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class DraftCombinePlayerAnthro < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :results    # :temp_player_id, :player_id, :first_name, :last_name, :player_name, :position, :height_wo_shoes, :height_wo_shoes_ft_in, :height_w_shoes, :height_w_shoes_ft_in, :weight, :wingspan, :wingspan_ft_in, :standing_reach, :standing_reach_ft_in, :body_fat_pct, :hand_length, :hand_width,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # DraftCombinePlayerAnthro

  end

end