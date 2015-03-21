require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class BoxScoreMisc < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :sql_players_misc,    #:game_date_est, :game_sequence, :game_id, :game_status_id, :game_status_text, :gamecode, :home_team_id, :visitor_team_id, :season, :live_period, :live_pc_time, :natl_tv_broadcaster_abbreviation, :live_period_time_bcast, :wh_status,
          :sql_teams_misc,      #:game_date_est, :game_sequence, :game_id, :team_id, :team_abbreviation, :team_city_name, :team_wins_losses, :pts_qtr1, :pts_qtr2, :pts_qtr3, :pts_qtr4, :pts_ot1, :pts_ot2, :pts_ot3, :pts_ot4, :pts_ot5, :pts_ot6, :pts_ot7, :pts_ot8, :pts_ot9, :pts_ot10, :pts,
          :table2,              #:game_id, :home_team_id, :visitor_team_id, :game_date_est, :home_team_wins, :home_team_losses, :series_leader,
          :table3,              #:game_id, :last_game_id, :last_game_date_est, :last_game_home_team_id, :last_game_home_team_city, :last_game_home_team_name, :last_game_home_team_abbreviation, :last_game_home_team_points, :last_game_visitor_team_id, :last_game_visitor_team_city, :last_game_visitor_team_name, :last_game_visitor_team_city1, :last_game_visitor_team_points,
          :table4,              #:game_id, :team_id, :team_abbreviation, :team_city, :player_id, :player_name, :start_position, :comment, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :to, :pf, :pts, :plus_minus,
          :table5,              #:game_id, :team_id, :team_name, :team_abbreviation, :team_city, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :to, :pf, :pts, :plus_minus,
          :table6,              #:league_id, :season_id, :team_id, :team_abbreviation, :team_city, :pts_paint, :pts_2_nd_chance, :pts_fb, :largest_lead, :lead_changes, :times_tied,
          :table7,              #:official_id, :first_name, :last_name, :jersey_num,
          :table8,              #:game_date, :attendance, :game_time,
          :table9,              #:player_id, :first_name, :last_name, :jersey_num, :team_id, :team_city, :team_name, :team_abbreviation,
          :table10,             #:game_id, :video_available_flag, :pt_available,
          :table11,             #:game_id, :team_id, :team_abbreviation, :team_city, :player_id, :player_name, :start_position, :comment, :min, :spd, :dist, :orbc, :drbc, :rbc, :tchs, :sast, :ftast, :pass, :ast, :cfgm, :cfga, :cfg_pct, :ufgm, :ufga, :ufg_pct, :fg_pct, :dfgm, :dfga, :dfg_pct,
          :table12,             #:game_id, :team_id, :team_nickname, :team_abbreviation, :team_city, :min, :dist, :orbc, :drbc, :rbc, :tchs, :sast, :ftast, :pass, :ast, :cfgm, :cfga, :cfg_pct, :ufgm, :ufga, :ufg_pct, :fg_pct, :dfgm, :dfga, :dfg_pct,
          :table13,             #:game_id, :team_id, :team_abbreviation, :team_city, :player_id, :player_name, :start_position, :comment, :min, :pts_off_tov, :pts_2_nd_chance, :pts_fb, :pts_paint, :opp_pts_off_tov, :opp_pts_2_nd_chance, :opp_pts_fb, :opp_pts_paint, :blk, :blka, :pf, :pfd,
          :table14              #:game_id, :team_id, :team_name, :team_abbreviation, :team_city, :min, :pts_off_tov, :pts_2_nd_chance, :pts_fb, :pts_paint, :opp_pts_off_tov, :opp_pts_2_nd_chance, :opp_pts_fb, :opp_pts_paint, :blk, :blka, :pf, :pfd,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # BoxScoreMisc

  end

end