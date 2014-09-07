require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class BoxScoreUsage < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :game_summary,      # :game_date_est, :game_sequence, :game_id, :game_status_id, :game_status_text, :gamecode, :home_team_id, :visitor_team_id, :season, :live_period, :live_pc_time, :natl_tv_broadcaster_abbreviation, :live_period_time_bcast, :wh_status,
          :line_score,        # :game_date_est, :game_sequence, :game_id, :team_id, :team_abbreviation, :team_city_name, :team_wins_losses, :pts_qtr1, :pts_qtr2, :pts_qtr3, :pts_qtr4, :pts_ot1, :pts_ot2, :pts_ot3, :pts_ot4, :pts_ot5, :pts_ot6, :pts_ot7, :pts_ot8, :pts_ot9, :pts_ot10, :pts,
          :season_series,     # :game_id, :home_team_id, :visitor_team_id, :game_date_est, :home_team_wins, :home_team_losses, :series_leader,
          :last_meeting,      # :game_id, :last_game_id, :last_game_date_est, :last_game_home_team_id, :last_game_home_team_city, :last_game_home_team_name, :last_game_home_team_abbreviation, :last_game_home_team_points, :last_game_visitor_team_id, :last_game_visitor_team_city, :last_game_visitor_team_name, :last_game_visitor_team_city1, :last_game_visitor_team_points,
          :player_stats,      # :game_id, :team_id, :team_abbreviation, :team_city, :player_id, :player_name, :start_position, :comment, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :to, :pf, :pts, :plus_minus,
          :team_stats,        # :game_id, :team_id, :team_name, :team_abbreviation, :team_city, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :to, :pf, :pts, :plus_minus,
          :other_stats,       # :league_id, :season_id, :team_id, :team_abbreviation, :team_city, :pts_paint, :pts_2_nd_chance, :pts_fb, :largest_lead, :lead_changes, :times_tied,
          :officials,         # :official_id, :first_name, :last_name, :jersey_num,
          :game_info,         # :game_date, :attendance, :game_time,
          :inactive_players,  # :player_id, :first_name, :last_name, :jersey_num, :team_id, :team_city, :team_name, :team_abbreviation,
          :available_video,   # :game_id, :video_available_flag, :pt_available,
          :player_track,      # :game_id, :team_id, :team_abbreviation, :team_city, :player_id, :player_name, :start_position, :comment, :min, :spd, :dist, :orbc, :drbc, :rbc, :tchs, :sast, :ftast, :pass, :ast, :cfgm, :cfga, :cfg_pct, :ufgm, :ufga, :ufg_pct, :fg_pct, :dfgm, :dfga, :dfg_pct,
          :player_track_team, # :game_id, :team_id, :team_nickname, :team_abbreviation, :team_city, :min, :dist, :orbc, :drbc, :rbc, :tchs, :sast, :ftast, :pass, :ast, :cfgm, :cfga, :cfg_pct, :ufgm, :ufga, :ufg_pct, :fg_pct, :dfgm, :dfga, :dfg_pct,
          :sql_players_usage, # :game_id, :team_id, :team_abbreviation, :team_city, :player_id, :player_name, :start_position, :comment, :min, :usg_pct, :pct_fgm, :pct_fga, :pct_fg3_m, :pct_fg3_a, :pct_ftm, :pct_fta, :pct_oreb, :pct_dreb, :pct_reb, :pct_ast, :pct_tov, :pct_stl, :pct_blk, :pct_blka, :pct_pf, :pct_pfd, :pct_pts,
          :sql_teams_usage    # :game_id, :team_id, :team_name, :team_abbreviation, :team_city, :min, :usg_pct, :pct_fgm, :pct_fga, :pct_fg3_m, :pct_fg3_a, :pct_ftm, :pct_fta, :pct_oreb, :pct_dreb, :pct_reb, :pct_ast, :pct_tov, :pct_stl, :pct_blk, :pct_blka, :pct_pf, :pct_pfd, :pct_pts,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # BoxScoreUsage

  end

end