require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.box_score_usage' do
      box_score_usage = client.box_score_usage('0021300901')
      it 'should return a box_score_usage resource' do
        expect(box_score_usage).to be_a NbaStats::Resources::BoxScoreUsage
      end
      it 'should be named box_score' do
        expect(box_score_usage.name).to eq 'boxscore'
      end
      NbaStats::Resources::BoxScoreUsage::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(box_score_usage.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return 1 game' do
        expect(box_score_usage.game_summary.count).to eq 1
      end
    end # .box_score_usage

  end # client

end