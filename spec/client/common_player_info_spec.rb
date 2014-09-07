require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.common_player_info' do
      common_player_info = client.common_player_info(201567)
      it 'should return a common_player_info resource' do
        expect(common_player_info).to be_a NbaStats::Resources::CommonPlayerInfo
      end
      it 'should be named common_player_info' do
        expect(common_player_info.name).to eq 'commonplayerinfo'
      end
      NbaStats::Resources::CommonPlayerInfo::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(common_player_info.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return 1 player' do
        expect(common_player_info.common_player_info.count).to eq 1
      end
      it 'should return info about Kevin Love' do
        expect(common_player_info.player_headline_stats[0][:player_name]).to eq 'Kevin Love'
      end
    end # .common_player_info

  end # client

end