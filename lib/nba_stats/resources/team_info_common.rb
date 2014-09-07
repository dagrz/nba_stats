require 'nba_stats/resources/resource_base'

module NbaStats

  module Resources

    class TeamInfoCommon < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :team_info_common,  #:team_id, :season_year, :team_city, :team_name, :team_abbreviation, :team_conference, :team_division, :team_code, :w, :l, :pct, :conf_rank, :div_rank,
          :team_season_ranks  #:league_id, :season_id, :team_id, :pts_rank, :pts_pg, :reb_rank, :reb_pg, :ast_rank, :ast_pg, :opp_pts_rank, :opp_pts_pg,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # TeamInfoCommon

  end

end