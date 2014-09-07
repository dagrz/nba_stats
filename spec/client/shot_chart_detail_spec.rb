require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.shot_chart_detail' do
      shot_chart_detail = client.shot_chart_detail('2013-14', 1610612759, 0)
      it 'should return a shot_chart_detail resource' do
        expect(shot_chart_detail).to be_a NbaStats::Resources::ShotChartDetail
      end
      it 'should be named shot_chart_detail' do
        expect(shot_chart_detail.name).to eq 'shotchartdetail'
      end
      NbaStats::Resources::ShotChartDetail::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(shot_chart_detail.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .shot_chart_detail

  end # client

end