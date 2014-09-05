require 'nba_stats/resources/resource_base'

module NbaStats

  module Resources

    class Scoreboard < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :game_header,                 # :game_date_est, :game_sequence, :game_id, :game_status_id, :game_status_text, :gamecode, :home_team_id, :visitor_team_id, :season, :live_period, :live_pc_time, :natl_tv_broadcaster_abbreviation, :live_period_time_bcast, :wh_status
          :line_score,                  # :game_date_est, :game_sequence, :game_id, :team_id, :team_abbreviation, :team_city_name, :team_wins_losses, :pts_qtr1, :pts_qtr2, :pts_qtr3, :pts_qtr4, :pts_ot1, :pts_ot2, :pts_ot3, :pts_ot4, :pts_ot5, :pts_ot6, :pts_ot7, :pts_ot8, :pts_ot9, :pts_ot10, :pts, :fg_pct, :ft_pct, :fg3_pct, :ast, :reb, :tov
          :series_standings,            # :game_id, :home_team_id, :visitor_team_id, :game_date_est, :home_team_wins, :home_team_losses, :series_leader
          :last_meeting,                # :game_id, :last_game_id, :last_game_date_est, :last_game_home_team_id, :last_game_home_team_city, :last_game_home_team_name, :last_game_home_team_abbreviation, :last_game_home_team_points, :last_game_visitor_team_id, :last_game_visitor_team_city, :last_game_visitor_team_name, :last_game_visitor_team_city1, :last_game_visitor_team_points
          :east_conf_standings_by_day,  # :team_id, :league_id, :season_id, :standingsdate, :conference, :team, :g, :w, :l, :w_pct, :home_record, :road_record
          :west_conf_standings_by_day,  # :team_id, :league_id, :season_id, :standingsdate, :conference, :team, :g, :w, :l, :w_pct, :home_record, :road_record
          :available                    # :game_id, :pt_available
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # Scoreboard

  end

end
