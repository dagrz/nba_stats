require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class TeamYearByYearStats < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :team_stats   #:team_id, :team_city, :team_name, :year, :gp, :wins, :losses, :win_pct, :conf_rank, :div_rank, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :pf, :stl, :tov, :blk, :pts,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # TeamYearByYearStats

  end

end