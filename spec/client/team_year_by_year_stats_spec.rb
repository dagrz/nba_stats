require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.team_year_by_year_stats' do
      team_year_by_year_stats = client.team_year_by_year_stats(1610612746, '2013-14')
      it 'should return a team_year_by_year_stats resource' do
        expect(team_year_by_year_stats).to be_a NbaStats::Resources::TeamYearByYearStats
      end
      it 'should be named team_year_by_year_stats' do
        expect(team_year_by_year_stats.name).to eq 'teamyearbyyearstats'
      end
      NbaStats::Resources::TeamYearByYearStats::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(team_year_by_year_stats.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return the same team id as requested' do
        expect(team_year_by_year_stats.team_stats[0][:team_id]).to eq 1610612746
      end
    end # .team_year_by_year_stats

  end # client

end