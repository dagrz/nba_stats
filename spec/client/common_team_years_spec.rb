require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.common_team_years' do
      common_team_years = client.common_team_years
      it 'should return a common_team_years resource' do
        expect(common_team_years).to be_a NbaStats::Resources::CommonTeamYears
      end
      it 'should be named common_team_years' do
        expect(common_team_years.name).to eq 'commonteamyears'
      end
      NbaStats::Resources::CommonTeamYears::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(common_team_years.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .common_team_years

  end # client

end