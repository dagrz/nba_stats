require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.franchise_history' do
      franchise_history = client.franchise_history('00')
      it 'should return a franchise_history resource' do
        expect(franchise_history).to be_a NbaStats::Resources::FranchiseHistory
      end
      it 'should be named franchise_history' do
        expect(franchise_history.name).to eq 'franchisehistory'
      end
      NbaStats::Resources::FranchiseHistory::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(franchise_history.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return the same league id as provided' do
        expect(franchise_history.franchise_history[0][:league_id]).to eq '00'
      end
    end # .franchise_history

  end # client

end