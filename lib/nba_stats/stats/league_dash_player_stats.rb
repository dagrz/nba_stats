require 'nba_stats/resources/league_dash_player_stats'

module NbaStats

  module LeagueDashPlayerStats

    # The path of the leaguedashplayerstats API
    LEAGUE_DASH_PLAYER_STATS_PATH   = '/stats/leaguedashplayerstats'

    # Calls the leaguedashplayerstats API and returns a LeagueDashPlayerStats resource.
    #
    # @param season [String]
    # @param measure_type [String]
    # @param per_mode [String]
    # @param plus_minus [String]
    # @param pace_adjust [String]
    # @param rank [String]
    # @param outcome [String]
    # @param location [String]
    # @param month [Integer]
    # @param season_segment [xxxxxxxxxx]
    # @param date_from [Date]
    # @param date_to [Date]
    # @param opponent_team_id [Integer]
    # @param vs_conference [String]
    # @param vs_division [String]
    # @param game_segment [String]
    # @param period [Integer]
    # @param last_n_games [Integer]
    # @param game_scope [String]
    # @param player_experience [String]
    # @param player_position [String]
    # @param starter_bench [String]
    # @param conf [String]
    # @param season_type [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::LeagueDashPlayerStats]
    def league_dash_player_stats(
        season,
        measure_type=NbaStats::Constants::MEASURE_TYPE_BASE,
        per_mode=NbaStats::Constants::PER_MODE_GAME,
        plus_minus=NbaStats::Constants::NO,
        pace_adjust=NbaStats::Constants::NO,
        rank=NbaStats::Constants::NO,
        outcome=nil,
        location=nil,
        month=0,
        season_segment=nil,
        date_from=nil,
        date_to=nil,
        opponent_team_id=0,
        vs_conference=nil,
        vs_division=nil,
        game_segment=nil,
        period=0,
        last_n_games=0,
        game_scope=nil,
        player_experience=nil,
        player_position=nil,
        starter_bench=nil,
        conf=NbaStats::Constants::CONF_BOTH,
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      unless date_from.nil?
        date_from = date_from.strftime('%m-%d-%Y')
      end
      unless date_to.nil?
        date_to = date_to.strftime('%m-%d-%Y')
      end
      NbaStats::Resources::LeagueDashPlayerStats.new(
        get(LEAGUE_DASH_PLAYER_STATS_PATH, {
            :Season => season,
            :SeasonType => season_type,
            :LeagueID => league_id,
            :MeasureType => measure_type,
            :PerMode => per_mode,
            :PlusMinus => plus_minus,
            :PaceAdjust => pace_adjust,
            :Rank => rank,
            :Outcome => outcome,
            :Location => location,
            :Month => month,
            :SeasonSegment => season_segment,
            :DateFrom => date_from,
            :DateTo => date_to,
            :OpponentTeamID => opponent_team_id,
            :VsConference => vs_conference,
            :VsDivision => vs_division,
            :GameSegment => game_segment,
            :Period => period,
            :LastNGames => last_n_games,
            :GameScope => game_scope,
            :PlayerExperience => player_experience,
            :PlayerPosition => player_position,
            :StarterBench => starter_bench,
            :Conf => conf
        })
      )
    end

  end # LeagueDashPlayerStats

end