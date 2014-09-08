require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.league_dash_player_stats' do
      league_dash_player_stats = client.league_dash_player_stats('2013-14')
      it 'should return a league_dash_player_stats resource' do
        expect(league_dash_player_stats).to be_a NbaStats::Resources::LeagueDashPlayerStats
      end
      it 'should be named league_dash_player_stats' do
        expect(league_dash_player_stats.name).to eq 'leaguedashplayerstats'
      end
      NbaStats::Resources::LeagueDashPlayerStats::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(league_dash_player_stats.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .league_dash_player_stats

  end # client

end