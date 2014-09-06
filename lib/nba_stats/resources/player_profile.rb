require 'nba_stats/resources/resource_base'

module NbaStats

  module Resources

    class PlayerProfile < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :overview_season_avg,   #:player_id, :player_name, :gp, :w, :l, :w_pct, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :tov, :stl, :blk, :blka, :pf, :pfd, :pts, :plus_minus, :dd2, :td3,
          :overview_career_avg,   #:player_id, :player_name, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :tov, :stl, :blk, :pf, :pts,
          :overview_season_high,  #:player_id, :player_name, :gp, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :tov, :stl, :blk, :blka, :pf, :pfd, :pts, :plus_minus,
          :overview_career_high,  #:player_id, :player_name, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :tov, :stl, :blk, :pf, :pts,
          :overview_career_total, #:player_id, :player_name, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :tov, :stl, :blk, :pf, :pts,
          :graph_game_list,       #:player_id, :player_name, :game_id, :game_date, :team_abbreviation, :team_name, :vs_team_id, :vs_team_abbreviation, :vs_team_name, :pts,
          :graph_player_avg,      #:player_id, :player_name, :pts,
          :graph_league_avg,      #:pts,
          :game_logs              #:player_id, :game_id, :game_date, :matchup, :wl, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :tov, :pf, :pts, :plus_minus,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # PlayerProfile

  end

end
