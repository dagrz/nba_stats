require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.box_score_misc' do
      box_score_misc = client.box_score_misc('0021300901')
      it 'should return a box_score_misc resource' do
        expect(box_score_misc).to be_a NbaStats::Resources::BoxScoreMisc
      end
      it 'should be named box_score' do
        expect(box_score_misc.name).to eq 'boxscore'
      end
      NbaStats::Resources::BoxScoreMisc::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(box_score_misc.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return 1 game' do
        expect(box_score_misc.game_summary.count).to eq 1
      end
    end # .box_score_misc

  end # client

end