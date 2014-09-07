require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class PlayByPlay < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [
          :play_by_play,      # :game_id, :eventnum, :eventmsgtype, :eventmsgactiontype, :period, :wctimestring, :pctimestring, :homedescription, :neutraldescription, :visitordescription, :score, :scoremargin,
          :available_video    # :video_available_flag,
      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # PlayByPlay

  end

end