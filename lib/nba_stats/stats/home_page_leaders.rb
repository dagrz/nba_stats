require 'nba_stats/resources/home_page_leaders'

module NbaStats

  module HomePageLeaders

    # The path of the homepageleaders API
    HOME_PAGE_LEADERS_PATH   = '/stats/homepageleaders'

    # Calls the homepageleaders API and returns a HomePageLeaders resource.
    #
    # @param season [String]
    # @param season_type [String]
    # @param league_id [String]
    # @param game_scope [String]
    # @param stat_category [String]
    # @param player_scope [String]
    # @param player_or_team [String]
    # @return [NbaStats::Resources::HomePageLeaders]
    def home_page_leaders(
        season,
        game_scope=NbaStats::Constants::GAME_SCOPE_SEASON,
        stat_category=NbaStats::Constants::STAT_CATEGORY_POINTS,
        player_scope=NbaStats::Constants::PLAYER_SCOPE_ALL_PLAYERS,
        player_or_team=NbaStats::Constants::PLAYER_OR_TEAM_PLAYER,
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      NbaStats::Resources::HomePageLeaders.new(
        get(HOME_PAGE_LEADERS_PATH, {
            :Season => season,
            :SeasonType => season_type,
            :LeagueID => league_id,
            :GameScope => game_scope,
            :StatCategory => stat_category,
            :PlayerScope => player_scope,
            :PlayerOrTeam => player_or_team
        })
      )
    end

  end # HomePageLeaders

end
