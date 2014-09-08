require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.player_career_stats' do
      player_career_stats = client.player_career_stats(201609)
      it 'should return a player_career_stats resource' do
        expect(player_career_stats).to be_a NbaStats::Resources::PlayerCareerStats
      end
      it 'should be named player_career_stats' do
        expect(player_career_stats.name).to eq 'playercareerstats'
      end
      NbaStats::Resources::PlayerCareerStats::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(player_career_stats.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return the same player id as requested' do
        expect(player_career_stats.career_totals_regular_season[0][:player_id]).to eq 201609
      end
    end # .player_career_stats

  end # client

end
