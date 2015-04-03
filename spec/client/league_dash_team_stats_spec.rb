require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.league_dash_team_stats' do
      league_dash_team_stats = client.league_dash_team_stats('2013-14')
      it 'should return a LeagueDashTeamStats resource' do
        expect(league_dash_team_stats).to be_a NbaStats::Resources::LeagueDashTeamStats
      end
      it 'should be named leaguedashteamstats' do
        expect(league_dash_team_stats.name).to eq 'leaguedashteamstats'
      end
      NbaStats::Resources::LeagueDashTeamStats::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(league_dash_team_stats.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return 30 teams' do
        expect(league_dash_team_stats.league_dash_team_stats.count).to eq 30
      end
    end # .league_dash_team_stats

  end # client

end