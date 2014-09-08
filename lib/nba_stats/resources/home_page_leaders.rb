require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class HomePageLeaders < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :home_page_leaders,   # :rank, :team_id, :team_name, :team_abbreviation, :pts, :fg_pct, :fg3_pct, :ft_pct, :efg_pct, :ts_pct, :pts_per48,
          :league_average,      # :pts, :fg_pct, :fg3_pct, :ft_pct, :efg_pct, :ts_pct, :pts_per48,
          :league_max           # :pts, :fg_pct, :fg3_pct, :ft_pct, :efg_pct, :ts_pct, :pts_per48,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # HomePageLeaders

  end

end