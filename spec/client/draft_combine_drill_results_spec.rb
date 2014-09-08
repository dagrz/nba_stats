require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.draft_combine_drill_results' do
      draft_combine_drill_results = client.draft_combine_drill_results('2014-15')
      it 'should return a draft_combine_drill_results resource' do
        expect(draft_combine_drill_results).to be_a NbaStats::Resources::DraftCombineDrillResults
      end
      it 'should be named draft_combine_drill_results' do
        expect(draft_combine_drill_results.name).to eq 'draftcombinedrillresults'
      end
      NbaStats::Resources::DraftCombineDrillResults::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(draft_combine_drill_results.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .draft_combine_drill_results

  end # client

end