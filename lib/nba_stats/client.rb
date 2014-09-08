require 'rest_client'
require 'addressable/uri'
require 'nba_stats/configuration'
require 'nba_stats/stats/scoreboard'
require 'nba_stats/stats/box_score'
require 'nba_stats/stats/common_all_players'
require 'nba_stats/stats/common_player_info'
require 'nba_stats/stats/player_profile'
require 'nba_stats/stats/team_info_common'
require 'nba_stats/stats/common_team_roster'
require 'nba_stats/stats/team_game_log'
require 'nba_stats/stats/team_year_by_year_stats'
require 'nba_stats/stats/common_team_years'
require 'nba_stats/stats/shot_chart_detail'
require 'nba_stats/stats/play_by_play'
require 'nba_stats/stats/box_score_four_factors'
require 'nba_stats/stats/box_score_usage'
require 'nba_stats/stats/box_score_scoring'
require 'nba_stats/stats/box_score_misc'
require 'nba_stats/stats/box_score_advanced'
require 'nba_stats/stats/league_dash_lineups'
require 'nba_stats/stats/league_dash_player_stats'
require 'nba_stats/stats/player_career_stats'
require 'nba_stats/stats/home_page_leaders'
require 'nba_stats/stats/franchise_history'
require 'nba_stats/stats/draft_combine_player_anthro'
require 'nba_stats/stats/draft_combine_drill_results'
require 'nba_stats/stats/draft_combine_non_stationary_shooting'
require 'nba_stats/stats/draft_combine_spot_shooting'
require 'nba_stats/stats/draft_combine_stats'
require 'nba_stats/errors'

module NbaStats

  class Client

    include NbaStats::Scoreboard
    include NbaStats::BoxScore
    include NbaStats::CommonAllPlayers
    include NbaStats::CommonPlayerInfo
    include NbaStats::PlayerProfile
    include NbaStats::TeamInfoCommon
    include NbaStats::CommonTeamRoster
    include NbaStats::TeamGameLog
    include NbaStats::TeamYearByYearStats
    include NbaStats::CommonTeamYears
    include NbaStats::ShotChartDetail
    include NbaStats::PlayByPlay
    include NbaStats::BoxScoreFourFactors
    include NbaStats::BoxScoreUsage
    include NbaStats::BoxScoreScoring
    include NbaStats::BoxScoreMisc
    include NbaStats::BoxScoreAdvanced
    include NbaStats::LeagueDashLineups
    include NbaStats::LeagueDashPlayerStats
    include NbaStats::PlayerCareerStats
    include NbaStats::HomePageLeaders
    include NbaStats::FranchiseHistory
    include NbaStats::DraftCombinePlayerAnthro
    include NbaStats::DraftCombineDrillResults
    include NbaStats::DraftCombineNonStationaryShooting
    include NbaStats::DraftCombineSpotShooting
    include NbaStats::DraftCombineStats

    # Define the same set of accessors as the Awesome module
    attr_accessor *Configuration::VALID_CONFIG_KEYS

    # Initialize a new Client object
    #
    # @param options [Hash]
    # @return [NbaStats::Client]
    def initialize(options={})
      # Merge the config values from the module and those passed
      # to the client.
      merged_options = NbaStats.options.merge(options)

      # Copy the merged values to this client and ignore those
      # not part of our configuration
      Configuration::VALID_CONFIG_KEYS.each do |key|
        send("#{key}=", merged_options[key])
      end
    end

    # @return [Hash]
    def request_headers
      @request_headers ||= {
          :accept => accept,
          :user_agent => user_agent
      }
    end

    # Perform a HTTP GET request
    #
    # @param path [String]
    # @param params [Hash]
    # @return [Hash]
    def get(path='/', params={})
      uri = Addressable::URI.new
      uri.query_values = params
      full_path = "#{path}?#{uri.query}"
      request(:get, full_path)
    end

    private

      # @return [RestClient::Resource]
      def resource
        @resource ||= RestClient::Resource.new(endpoint)
      end

      # Send the HTTP request
      #
      # @param method [String]
      # @param path [String]
      # @return [RestClient::Response]
      def request(method, path)
        resource[path].send(method.to_sym, request_headers) { |response, request, result, &block|
          case response.code
            when 200
              response
            when 400
              if response.include? ' is required'
                raise ArgumentError.new(response)
              else
                raise BadRequestError.new(response)
              end
            else
              response.return!(request, result, &block)
          end
        }
      end

  end # Client

end