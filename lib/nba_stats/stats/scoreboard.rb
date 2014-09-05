require 'nba_stats/resources/scoreboard'

module NbaStats

  module Scoreboard

    # The path of the scoreboard API
    SCOREBOARD_PATH   = '/stats/scoreboard'

    # Calls the scoreboard API and returns a Scoreboard resource.
    #
    # @param league_id [String]
    # @param game_date [Date]
    # @param day_offset [Integer]
    # @return [NbaStats::Resources::Scoreboard]
    def scoreboard(league_id=NbaStats::Configuration::DEFAULT_LEAGUE_ID, game_date=Date.today, day_offset=0)
      NbaStats::Resources::Scoreboard.new(
          get(SCOREBOARD_PATH, {
              :LeagueID => league_id,
              :GameDate => game_date.strftime('%m-%d-%Y'),
              :DayOffset => day_offset
          })
      )
    end

  end # Scoreboard

end
