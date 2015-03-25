require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class PlayerGameLog < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :player_game_log  #:season_id, :player_id, :game_id, :game_date, :matchup, :wl, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :tov, :pf, :pts, :plus_minus, :video_available,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # PlayerGameLog

  end

end