require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.team_game_log' do
      team_game_log = client.team_game_log(1610612746, '2013-14')
      it 'should return a team_game_log resource' do
        expect(team_game_log).to be_a NbaStats::Resources::TeamGameLog
      end
      it 'should be named team_game_log' do
        expect(team_game_log.name).to eq 'teamgamelog'
      end
      NbaStats::Resources::TeamGameLog::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(team_game_log.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .team_game_log

  end # client

end