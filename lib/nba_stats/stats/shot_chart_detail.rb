require 'nba_stats/resources/shot_chart_detail'

module NbaStats

  module ShotChartDetail

    # The path of the shotchartdetail API
    SHOT_CHART_DETAIL_PATH   = '/stats/shotchartdetail'

    # Calls the shotchartdetail API and returns a ShotChartDetail resource.
    #
    # @param season [String]
    # @param team_id [Integer]
    # @param player_id [Integer]
    # @param game_id [String]
    # @param outcome [String]
    # @param location [String]
    # @param month [Integer]
    # @param season_segment [String]
    # @param date_from [Date]
    # @param date_to [Date]
    # @param opponent_team_id [Integer]
    # @param vs_conference [String]
    # @param vs_division [String]
    # @param position [String]
    # @param rookie_year [String]
    # @param game_segment [String]
    # @param period [Integer]
    # @param last_n_games [Integer]
    # @param context_filter [String]
    # @param context_measure [String]
    # @param season_type [String]
    # @param league_id [String]
    # @return [NbaStats::Resources::ShotChartDetail]
    def shot_chart_detail(
        season,
        team_id,
        player_id,
        game_id=nil,
        outcome=nil,
        location=nil,
        month=0,
        season_segment=nil,
        date_from=nil,
        date_to=nil,
        opponent_team_id=0,
        vs_conference=nil,
        vs_division=nil,
        position=nil,
        rookie_year=nil,
        game_segment=nil,
        period=0,
        last_n_games=0,
        context_filter=nil,
        context_measure=NbaStats::Constants::CONTEXT_MEASURE_FG_PCT,
        season_type=NbaStats::Constants::SEASON_TYPE_REGULAR,
        league_id=NbaStats::Constants::LEAGUE_ID_NBA
    )
      unless date_from.nil?
        date_from = date_from.strftime('%m-%d-%Y')
      end
      unless date_to.nil?
        date_to = date_to.strftime('%m-%d-%Y')
      end
      NbaStats::Resources::ShotChartDetail.new(
        get(SHOT_CHART_DETAIL_PATH, {
            :Season => season,
            :SeasonType => season_type,
            :LeagueID => league_id,
            :TeamID => team_id,
            :PlayerID => player_id,
            :GameID => game_id,
            :Outcome => outcome,
            :Location => location,
            :Month => month,
            :SeasonSegment => season_segment,
            :DateFrom => date_from,
            :DateTo => date_to,
            :OpponentTeamID => opponent_team_id,
            :VsConference => vs_conference,
            :VsDivision => vs_division,
            :Position => position,
            :RookieYear => rookie_year,
            :GameSegment => game_segment,
            :Period => period,
            :LastNGames => last_n_games,
            :ContextFilter => context_filter,
            :ContextMeasure => context_measure
        })
      )
    end

  end # ShotChartDetail

end
