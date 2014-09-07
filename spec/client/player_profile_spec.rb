require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.player_profile' do
      player_profile = client.player_profile(201567, '2013-14', '2010-11', '2013-14')
      it 'should return a player_profile resource' do
        expect(player_profile).to be_a NbaStats::Resources::PlayerProfile
      end
      it 'should be named player_profile' do
        expect(player_profile.name).to eq 'playerprofile'
      end
      NbaStats::Resources::PlayerProfile::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(player_profile.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return 1 player' do
        expect(player_profile.overview_career_avg.count).to eq 1
      end
    end # .player_profile

  end # client

end