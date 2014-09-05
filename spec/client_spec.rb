require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.scoreboard' do
      scoreboard = client.scoreboard(NbaStats::Configuration::DEFAULT_LEAGUE_ID, Date.parse('10-02-2014'), 0)
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
    end # .scoreboard

    describe '.box_score' do
      box_score = client.box_score('0021300764')
      it 'should return a box_score resource' do
        expect(box_score).to be_a NbaStats::Resources::BoxScore
      end
      it 'should be named box_score' do
        expect(box_score.name).to eq 'boxscore'
      end
      NbaStats::Resources::BoxScore::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(box_score.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .box_score

    describe '.common_all_players' do
      common_all_players = client.common_all_players()
      it 'should return a common_all_players resource' do
        expect(common_all_players).to be_a NbaStats::Resources::CommonAllPlayers
      end
      it 'should be named common_all_players' do
        expect(common_all_players.name).to eq 'commonallplayers'
      end
      NbaStats::Resources::CommonAllPlayers::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(common_all_players.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .common_all_players

  end # client

end