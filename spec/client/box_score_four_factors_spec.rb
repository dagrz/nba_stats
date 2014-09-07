require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.box_score_four_factors' do
      box_score_four_factors = client.box_score_four_factors('0021300901')
      it 'should return a box_score_four_factors resource' do
        expect(box_score_four_factors).to be_a NbaStats::Resources::BoxScoreFourFactors
      end
      it 'should be named box_score_four_factors' do
        expect(box_score_four_factors.name).to eq 'boxscore'
      end
      NbaStats::Resources::BoxScoreFourFactors::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(box_score_four_factors.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return 1 games' do
        expect(box_score_four_factors.game_summary.count).to eq 1
      end
    end # .box_score_four_factors

  end # client

end
