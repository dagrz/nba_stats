require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class ShotChartDetail < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :shot_chart_detail,   # :grid_type, :game_id, :game_event_id, :player_id, :player_name, :team_id, :team_name, :period, :minutes_remaining, :seconds_remaining, :event_type, :action_type, :shot_type, :shot_zone_basic, :shot_zone_area, :shot_zone_range, :shot_distance, :loc_x, :loc_y, :shot_attempted_flag, :shot_made_flag,
          :league_averages      # :grid_type, :shot_zone_basic, :shot_zone_area, :shot_zone_range, :fga, :fgm, :fg_pct,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # ShotChartDetail

  end

end