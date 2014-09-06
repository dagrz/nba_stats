require 'nba_stats/resources/common_player_info'

module NbaStats

  module CommonPlayerInfo

    # The path of the commonplayerinfo API
    COMMON_PLAYER_INFO_PATH   = '/stats/commonplayerinfo'

    # Calls the commonplayerinfo API and returns a CommonPlayerInfo resource.
    #
    # @param player_id [Integer],
    # @param season_type [String],
    # @param league_id [String],
    # @return [NbaStats::Resources::CommonPlayerInfo]
    def common_player_info(player_id=1, season_type='Regular Season', league_id=NbaStats::Configuration::DEFAULT_LEAGUE_ID)
    NbaStats::Resources::CommonPlayerInfo.new(
        get(COMMON_PLAYER_INFO_PATH, {
            :PlayerID => player_id,
            :SeasonType => season_type,
            :LeagueID => league_id
        })
    )
    end

  end # CommonPlayerInfo

end
