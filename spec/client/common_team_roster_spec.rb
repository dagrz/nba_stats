require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.common_team_roster' do
      common_team_roster = client.common_team_roster(1610612746, '2013-14')
      it 'should return a common_team_roster resource' do
        expect(common_team_roster).to be_a NbaStats::Resources::CommonTeamRoster
      end
      it 'should be named common_team_roster' do
        expect(common_team_roster.name).to eq 'commonteamroster'
      end
      NbaStats::Resources::CommonTeamRoster::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(common_team_roster.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .common_team_roster

  end # client

end