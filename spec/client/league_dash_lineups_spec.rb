require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.league_dash_lineups' do
      league_dash_lineups = client.league_dash_lineups('2014-15')
      it 'should return a league_dash_lineups resource' do
        expect(league_dash_lineups).to be_a NbaStats::Resources::LeagueDashLineups
      end
      it 'should be named league_dash_lineups' do
        expect(league_dash_lineups.name).to eq 'leaguedashlineups'
      end
      NbaStats::Resources::LeagueDashLineups::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(league_dash_lineups.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .league_dash_lineups

  end # client

end