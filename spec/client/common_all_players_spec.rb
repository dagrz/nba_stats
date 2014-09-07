require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.common_all_players' do
      common_all_players = client.common_all_players('2013-14')
      it 'should return a common_all_players resource' do
        expect(common_all_players).to be_a NbaStats::Resources::CommonAllPlayers
      end
      it 'should be named common_all_players' do
        expect(common_all_players.name).to eq 'commonallplayers'
      end
      NbaStats::Resources::CommonAllPlayers::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(common_all_players.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .common_all_players

  end # client

end