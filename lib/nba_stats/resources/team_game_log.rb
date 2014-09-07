require 'nba_stats/resources/resource_base'

module NbaStats

  module Resources

    class TeamGameLog < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :team_game_log    #:team_id, :game_id, :game_date, :matchup, :wl, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :tov, :pf, :pts, :video_available,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # TeamGameLog

  end

end