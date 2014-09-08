require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.draft_combine_non_stationary_shooting' do
      draft_combine_non_stationary_shooting = client.draft_combine_non_stationary_shooting('2014-15')
      it 'should return a draft_combine_non_stationary_shooting resource' do
        expect(draft_combine_non_stationary_shooting).to be_a NbaStats::Resources::DraftCombineNonStationaryShooting
      end
      it 'should be named draft_combine_non_stationary_shooting' do
        expect(draft_combine_non_stationary_shooting.name).to eq 'draftcombinenonstationaryshooting'
      end
      NbaStats::Resources::DraftCombineNonStationaryShooting::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(draft_combine_non_stationary_shooting.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .draft_combine_non_stationary_shooting

  end # client

end