require 'nba_stats/resources/resource_base'

module NbaStats

  module Resources

    class CommonPlayerInfo < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :common_player_info,      #:person_id, :first_name, :last_name, :display_first_last, :display_last_comma_first, :display_fi_last, :birthdate, :school, :country, :last_affiliation, :jersey, :position, :rosterstatus, :team_id, :team_name, :team_abbreviation, :team_code, :team_city, :playercode,
          :player_headline_stats    #:player_id, :player_name, :time_frame, :pts, :ast, :reb, :pie,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # CommonPlayerInfo

  end

end