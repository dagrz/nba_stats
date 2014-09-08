require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class LeagueDashLineups < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :lineups    #:group_set, :group_id, :group_name, :team_id, :team_abbreviation, :gp, :w, :l, :w_pct, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :tov, :stl, :blk, :blka, :pf, :pfd, :pts, :plus_minus,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # LeagueDashLineups

  end

end