require 'nba_stats/resources/player_dashboard_by_general_splits'

module NbaStats

  module PlayerDashboardByGeneralSplits

    # The path of the playerdashboardbygeneralsplits API
    PLAYER_DASHBOARD_BY_GENERAL_SPLITS_PATH   = '/stats/playerdashboardbygeneralsplits'

    # Calls the playerdashboardbygeneralsplits API and returns a PlayerDashboardByGeneralSplits resource.
    #
    # @param season [String]
    # @param player_id [Integer]
    # @param date_from [Date]
    # @param date_to [Date]
    # @param game_segment [String]
    # @param last_n_games [Integer]
    # @param league_id [String]
    # @param location [String]
    # @param measure_type [String]
    # @param month [Integer]
    # @param opponent_team_id [Integer]
    # @param outcome [String]
    # @param pace_adjust [String]
    # @param per_mode [String]
    # @param period [Integer]
    # @param plus_minus [String]
    # @param rank [String]
    # @param season_segment [String]
    # @param season_type [String]
    # @param vs_conference [String]
    # @param vs_division [String]
    # @return [NbaStats::Resources::PlayerDashboardByGeneralSplits]
    def player_dashboard_by_general_splits(
        season,
        player_id,
        date_from=nil,
        date_to=nil,
        game_segment=nil,
        last_n_games=0,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA,
        location=nil,
        measure_type=NbaStats::Constants::MEASURE_TYPE_USAGE,
        month=0,
        opponent_team_id=0,
        outcome=nil,
        pace_adjust=NbaStats::Constants::NO,
        per_mode=NbaStats::Constants::PER_MODE_GAME,
        period=0,
        plus_minus=NbaStats::Constants::NO,
        rank=NbaStats::Constants::NO,
        season_segment=nil,
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        vs_conference=nil,
        vs_division=nil
    )
      unless date_from.nil?
        date_from = date_from.strftime('%m-%d-%Y')
      end
      unless date_to.nil?
        date_to = date_to.strftime('%m-%d-%Y')
      end
      NbaStats::Resources::PlayerDashboardByGeneralSplits.new(
        get(PLAYER_DASHBOARD_BY_GENERAL_SPLITS_PATH, {
            :DateFrom => date_from,
            :DateTo => date_to,
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
            :PlayerID => player_id,
            :PlusMinus => plus_minus,
            :Rank => rank,
            :Season => season,
            :SeasonSegment => season_segment,
            :SeasonType => season_type,
            :VsConference => vs_conference,
            :VsDivision => vs_division
        })
    )
    end

  end # playerdashboardbygeneralsplits

end