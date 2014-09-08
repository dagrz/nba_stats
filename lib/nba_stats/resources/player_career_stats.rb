require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class PlayerCareerStats < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :season_totals_regular_season,    # :player_id, :season_id, :league_id, :team_id, :team_abbreviation, :player_age, :gp, :gs, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :tov, :pf, :pts,
          :career_totals_regular_season,    # :player_id, :league_id, :team_id, :gp, :gs, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :tov, :pf, :pts,
          :season_totals_post_season,       # :player_id, :season_id, :league_id, :team_id, :team_abbreviation, :player_age, :gp, :gs, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :tov, :pf, :pts,
          :career_totals_post_season,       # :player_id, :league_id, :team_id, :gp, :gs, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :tov, :pf, :pts,
          :season_totals_all_star_season,   # :player_id, :season_id, :league_id, :team_id, :team_abbreviation, :player_age, :gp, :gs, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :tov, :pf, :pts,
          :career_totals_all_star_season    # :player_id, :league_id, :team_id, :gp, :gs, :min, :fgm, :fga, :fg_pct, :fg3_m, :fg3_a, :fg3_pct, :ftm, :fta, :ft_pct, :oreb, :dreb, :reb, :ast, :stl, :blk, :tov, :pf, :pts,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # PlayerCareerStats

  end

end