require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.team_info_common' do
      team_info_common = client.team_info_common(1610612746, '2013-14')
      it 'should return a team_info_common resource' do
        expect(team_info_common).to be_a NbaStats::Resources::TeamInfoCommon
      end
      it 'should be named team_info_common' do
        expect(team_info_common.name).to eq 'teaminfocommon'
      end
      NbaStats::Resources::TeamInfoCommon::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(team_info_common.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return 1 team' do
        expect(team_info_common.team_info_common.count).to eq 1
      end
    end # .team_info_common

  end # client

end