require 'nba_stats/resources/resource_base'

module NbaStats

  module Resources

    class CommonTeamRoster < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :common_team_roster,  #:team_id, :season, :league_id, :player, :num, :position, :height, :weight, :birth_date, :age, :exp, :school, :player_id,
          :coaches              #:team_id, :season, :coach_id, :first_name, :last_name, :coach_name, :coach_code, :is_assistant, :coach_type, :school, :sort_sequence,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # CommonTeamRoster

  end

end
