require 'nba_stats/resources/resource_base'

module NbaStats

  module Resources

    class Boxscore < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :game_summary,
          :line_score,
          :season_series,
          :last_meeting,
          :player_stats,
          :team_stats,
          :other_stats,
          :officials,
          :game_info,
          :inactive_players,
          :available_video,
          :player_track,
          :player_track_team
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # Boxscore

  end

end
