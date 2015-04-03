require 'nba_stats/resources/league_dash_team_stats'

module NbaStats

  module LeagueDashTeamStats

    # The path of the leaguedashteamstats API
    LEAGUE_DASH_TEAM_STATS_PATH   = '/stats/leaguedashteamstats'

    # Calls the leaguedashteamstats API and returns a LeagueDashTeamStats resource.
    #
    # @param date_from [Date]
    # @param date_to [Date]
    # @param game_scope [String]
    # @param game_segment [String]
    # @param last_n_games [Integer]
    # @param league_id [String]
    # @param location [String]
    # @param measure_type [String]
    # @param month [Integer]
    # @param opponent_team_id [String]
    # @param outcome [String]
    # @param pace_adjust [String]
    # @param per_mode [String]
    # @param period [Integer]
    # @param player_experience [String]
    # @param player_position [String]
    # @param plus_minus [String]
    # @param rank [String]
    # @param season [String]
    # @param season_segment [String]
    # @param season_type [String]
    # @param starter_bench [String]
    # @param vs_conference [String]
    # @param vs_division [String]
    # @return [NbaStats::Resources::LeagueDashTeamStats]
    def league_dash_team_stats(
        season,
        date_from=nil,
        date_to=nil,
        game_scope=nil,
        game_segment=nil,
        last_n_games=0,
        location=nil,
        measure_type=NbaStats::Constants::MEASURE_TYPE_BASE,
        month=0,
        opponent_team_id=0,
        outcome=nil,
        pace_adjust=NbaStats::Constants::NO,
        per_mode=NbaStats::Constants::PER_MODE_GAME,
        period=0,
        player_experience=nil,
        player_position=nil,
        plus_minus=NbaStats::Constants::NO,
        rank=NbaStats::Constants::NO,
        season_segment=nil,
        starter_bench=nil,
        vs_conference=nil,
        vs_division=nil,
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
    NbaStats::Resources::LeagueDashTeamStats.new(
        get(LEAGUE_DASH_TEAM_STATS_PATH, {
            :DateFrom => date_from,
            :DateTo => date_to,
            :GameScope => game_scope,
            :GameSegment => game_segment,
            :LastNGames => last_n_games,
            :LeagueID => league_id,
            :Location => location,
            :MeasureType => measure_type,
            :Month => month,
            :OpponentTeamID => opponent_team_id,
            :Outcome => outcome,
            :PaceAdjust => pace_adjust,
            :PerMode => per_mode,
            :Period => period,
            :PlayerExperience => player_experience,
            :PlayerPosition => player_position,
            :PlusMinus => plus_minus,
            :Rank => rank,
            :Season => season,
            :SeasonSegment => season_segment,
            :SeasonType => season_type,
            :StarterBench => starter_bench,
            :VsConference => vs_conference,
            :VsDivision => vs_division
        })
    )
    end

  end # LeagueDashTeamStats

end