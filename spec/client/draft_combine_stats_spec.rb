require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.draft_combine_stats' do
      draft_combine_stats = client.draft_combine_stats('2014-15')
      it 'should return a draft_combine_stats resource' do
        expect(draft_combine_stats).to be_a NbaStats::Resources::DraftCombineStats
      end
      it 'should be named draft_combine_stats' do
        expect(draft_combine_stats.name).to eq 'draftcombinestats'
      end
      NbaStats::Resources::DraftCombineStats::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(draft_combine_stats.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .draft_combine_stats

  end # client

end