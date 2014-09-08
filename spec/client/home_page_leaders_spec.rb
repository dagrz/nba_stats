require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.home_page_leaders' do
      home_page_leaders = client.home_page_leaders('2013-14')
      it 'should return a home_page_leaders resource' do
        expect(home_page_leaders).to be_a NbaStats::Resources::HomePageLeaders
      end
      it 'should be named home_page_leaders' do
        expect(home_page_leaders.name).to eq 'homepageleaders'
      end
      NbaStats::Resources::HomePageLeaders::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(home_page_leaders.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .home_page_leaders

  end # client

end