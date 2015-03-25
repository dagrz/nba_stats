require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.player_game_log' do
      player_game_log = client.player_game_log(2544, '2013-14')
      it 'should return a player_game_log resource' do
        expect(player_game_log).to be_a NbaStats::Resources::PlayerGameLog
      end
      it 'should be named playergamelog' do
        expect(player_game_log.name).to eq 'playergamelog'
      end
      NbaStats::Resources::PlayerGameLog::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(player_game_log.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return the same player id as requested' do
        expect(player_game_log.player_game_log[0][:player_id]).to eq 2544
      end
    end # .player_game_log

  end # client

end