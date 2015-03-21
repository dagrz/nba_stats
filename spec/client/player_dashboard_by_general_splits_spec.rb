require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.player_dashboard_by_general_splits' do
      player_dashboard_by_general_splits = client.player_dashboard_by_general_splits('2013-14', 977)
      it 'should return a player_dashboard_by_general_splits resource' do
        expect(player_dashboard_by_general_splits).to be_a NbaStats::Resources::PlayerDashboardByGeneralSplits
      end
      it 'should be named player_dashboard_by_general_splits' do
        expect(player_dashboard_by_general_splits.name).to eq 'playerdashboardbygeneralsplits'
      end
      NbaStats::Resources::PlayerDashboardByGeneralSplits::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(player_dashboard_by_general_splits.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .player_dashboard_by_general_splits

  end # client

end