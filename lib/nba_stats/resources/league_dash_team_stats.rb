require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class LeagueDashTeamStats < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :league_dash_team_stats    # :team_id, :team_name, :gp, :w, :l, :w_pct, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :tov, :stl, :blk, :blka, :pf, :pfd, :pts, :plus_minus, :cfid, :cfparams
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # LeagueDashTeamStats

  end

end