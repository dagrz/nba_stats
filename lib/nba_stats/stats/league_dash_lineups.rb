require 'nba_stats/resources/league_dash_lineups'

module NbaStats

  module LeagueDashLineups

    # The path of the leaguedashlineups API
    LEAGUE_DASH_LINEUPS_PATH   = '/stats/leaguedashlineups'

    # Calls the leaguedashlineups API and returns a LeagueDashLineups resource.
    #
    # @param season [String]
    # @param group_quantity [Integer]
    # @param measure_type [String]
    # @param per_mode [String]
    # @param plus_minus [String]
    # @param pace_adjust [String]
    # @param rank [String]
    # @param outcome [String]
    # @param location [String]
    # @param month [Integer]
    # @param season_segment [String]
    # @param date_from [Date]
    # @param date_to [Date]
    # @param opponent_team_id [Integer]
    # @param vs_conference [String]
    # @param vs_division [String]
    # @param game_segment [String]
    # @param period [Integer]
    # @param last_n_games [Integer]
    # @param game_id [String]
    # @param season_type [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::LeagueDashLineups]
    def league_dash_lineups(
        season,
        group_quantity=5,
        measure_type=NbaStats::Constants::MEASURE_TYPE_BASE,
        per_mode=NbaStats::Constants::PER_MODE_GAME,
        plus_minus=NbaStats::Constants::NO,
        pace_adjust=NbaStats::Constants::NO,
        rank=NbaStats::Constants::NO,
        outcome='',
        location='',
        month=0,
        season_segment='',
        date_from='',
        date_to='',
        opponent_team_id=0,
        vs_conference='',
        vs_division='',
        game_segment='',
        period=0,
        last_n_games=0,
        game_id='',
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      unless date_from.nil? or date_from.empty?
        date_from = date_from.strftime('%m-%d-%Y')
      end
      unless date_to.nil? or date_to.empty?
        date_to = date_to.strftime('%m-%d-%Y')
      end
      NbaStats::Resources::LeagueDashLineups.new(
        get(LEAGUE_DASH_LINEUPS_PATH, {
            :DateFrom => date_from,
            :DateTo => date_to,
            :GameID => game_id,
            :GameSegment => game_segment,
            :GroupQuantity => group_quantity,
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

  end # LeagueDashLineups

end
