require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.play_by_play' do
      play_by_play = client.play_by_play('0021301230')
      it 'should return a play_by_play resource' do
        expect(play_by_play).to be_a NbaStats::Resources::PlayByPlay
      end
      it 'should be named play_by_play' do
        expect(play_by_play.name).to eq 'playbyplay'
      end
      NbaStats::Resources::PlayByPlay::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(play_by_play.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return the same game id as requested' do
        expect(play_by_play.play_by_play[0][:game_id]).to eq '0021301230'
      end
    end # .play_by_play

  end # client

end