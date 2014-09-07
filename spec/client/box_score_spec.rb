require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.box_score' do
      box_score = client.box_score('0021300764')
      it 'should return a box_score resource' do
        expect(box_score).to be_a NbaStats::Resources::BoxScore
      end
      it 'should be named box_score' do
        expect(box_score.name).to eq 'boxscore'
      end
      NbaStats::Resources::BoxScore::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(box_score.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return 1 games' do
        expect(box_score.game_summary.count).to eq 1
      end
    end # .box_score

  end # client

end