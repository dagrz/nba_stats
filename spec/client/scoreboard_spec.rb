require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.scoreboard' do
      scoreboard = client.scoreboard(Date.parse('16-04-2014'))
      it 'should return a scoreboard resource' do
        expect(scoreboard).to be_a NbaStats::Resources::Scoreboard
      end
      it 'should be named scoreboard' do
        expect(scoreboard.name).to eq 'scoreboard'
      end
      NbaStats::Resources::Scoreboard::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(scoreboard.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return 15 games' do
        expect(scoreboard.game_header.count).to eq 15
      end
    end # .scoreboard

  end # client

end