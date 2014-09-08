require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.draft_combine_player_anthro' do
      draft_combine_player_anthro = client.draft_combine_player_anthro('2014-15')
      it 'should return a draft_combine_player_anthro resource' do
        expect(draft_combine_player_anthro).to be_a NbaStats::Resources::DraftCombinePlayerAnthro
      end
      it 'should be named draft_combine_player_anthro' do
        expect(draft_combine_player_anthro.name).to eq 'draftcombineplayeranthro'
      end
      NbaStats::Resources::DraftCombinePlayerAnthro::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(draft_combine_player_anthro.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .draft_combine_player_anthro

  end # client

end