require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class PlayerDashboardByGeneralSplits < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :overall_player_dashboard,            # :group_set, :group_value, :gp, :w, :l, :w_pct, :min, :usg_pct, :pct_fgm, :pct_fga, :pct_fg3_m, :pct_fg3_a, :pct_ftm, :pct_fta, :pct_oreb, :pct_dreb, :pct_reb, :pct_ast, :pct_tov, :pct_stl, :pct_blk, :pct_blka, :pct_pf, :pct_pfd, :pct_pts, :cfid, :cfparams,
          :location_player_dashboard,           # :group_set, :group_value, :gp, :w, :l, :w_pct, :min, :usg_pct, :pct_fgm, :pct_fga, :pct_fg3_m, :pct_fg3_a, :pct_ftm, :pct_fta, :pct_oreb, :pct_dreb, :pct_reb, :pct_ast, :pct_tov, :pct_stl, :pct_blk, :pct_blka, :pct_pf, :pct_pfd, :pct_pts, :cfid, :cfparams,
          :wins_losses_player_dashboard,        # :group_set, :group_value, :gp, :w, :l, :w_pct, :min, :usg_pct, :pct_fgm, :pct_fga, :pct_fg3_m, :pct_fg3_a, :pct_ftm, :pct_fta, :pct_oreb, :pct_dreb, :pct_reb, :pct_ast, :pct_tov, :pct_stl, :pct_blk, :pct_blka, :pct_pf, :pct_pfd, :pct_pts, :cfid, :cfparams,
          :month_player_dashboard,              # :group_set, :group_value, :gp, :w, :l, :w_pct, :min, :usg_pct, :pct_fgm, :pct_fga, :pct_fg3_m, :pct_fg3_a, :pct_ftm, :pct_fta, :pct_oreb, :pct_dreb, :pct_reb, :pct_ast, :pct_tov, :pct_stl, :pct_blk, :pct_blka, :pct_pf, :pct_pfd, :pct_pts, :cfid, :cfparams,
          :pre_post_all_star_player_dashboard,  # :group_set, :group_value, :gp, :w, :l, :w_pct, :min, :usg_pct, :pct_fgm, :pct_fga, :pct_fg3_m, :pct_fg3_a, :pct_ftm, :pct_fta, :pct_oreb, :pct_dreb, :pct_reb, :pct_ast, :pct_tov, :pct_stl, :pct_blk, :pct_blka, :pct_pf, :pct_pfd, :pct_pts, :cfid, :cfparams,
          :starting_position,                   # :group_set, :group_value, :gp, :w, :l, :w_pct, :min, :usg_pct, :pct_fgm, :pct_fga, :pct_fg3_m, :pct_fg3_a, :pct_ftm, :pct_fta, :pct_oreb, :pct_dreb, :pct_reb, :pct_ast, :pct_tov, :pct_stl, :pct_blk, :pct_blka, :pct_pf, :pct_pfd, :pct_pts, :cfid, :cfparams,
          :days_rest_player_dashboard           # :group_set, :group_value, :gp, :w, :l, :w_pct, :min, :usg_pct, :pct_fgm, :pct_fga, :pct_fg3_m, :pct_fg3_a, :pct_ftm, :pct_fta, :pct_oreb, :pct_dreb, :pct_reb, :pct_ast, :pct_tov, :pct_stl, :pct_blk, :pct_blka, :pct_pf, :pct_pfd, :pct_pts, :cfid, :cfparams,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # PlayerDashboardByGeneralSplits

  end

end