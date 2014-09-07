require 'spec_helper'
require 'nba_stats/constants'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.scoreboard' do
      scoreboard = client.scoreboard('00', Date.parse('10-02-2014'), 0)
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

    describe '.common_player_info' do
      common_player_info = client.common_player_info(201567)
      it 'should return a common_player_info resource' do
        expect(common_player_info).to be_a NbaStats::Resources::CommonPlayerInfo
      end
      it 'should be named common_player_info' do
        expect(common_player_info.name).to eq 'commonplayerinfo'
      end
      NbaStats::Resources::CommonPlayerInfo::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(common_player_info.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should be about Kevin Love' do
        expect(common_player_info.player_headline_stats[0][:player_name]).to eq 'Kevin Love'
      end
    end # .common_all_players

    describe '.player_profile' do
      player_profile = client.player_profile('2013-14', 'Regular Season', '00', 201567)
      it 'should return a player_profile resource' do
        expect(player_profile).to be_a NbaStats::Resources::PlayerProfile
      end
      it 'should be named player_profile' do
        expect(player_profile.name).to eq 'playerprofile'
      end
      NbaStats::Resources::PlayerProfile::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(player_profile.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .player_profile

    describe '.team_info_common' do
      team_info_common = client.team_info_common('2013-14', 'Regular Season', '00', 1610612746)
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
    end # .team_info_common

    describe '.common_team_roster' do
      common_team_roster = client.common_team_roster('2013-14', '00', 1610612746)
      it 'should return a common_team_roster resource' do
        expect(common_team_roster).to be_a NbaStats::Resources::CommonTeamRoster
      end
      it 'should be named common_team_roster' do
        expect(common_team_roster.name).to eq 'commonteamroster'
      end
      NbaStats::Resources::CommonTeamRoster::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(common_team_roster.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .common_team_roster

    describe '.team_game_log' do
      team_game_log = client.team_game_log('2013-14', 'Regular Season', '00', 1610612746)
      it 'should return a team_game_log resource' do
        expect(team_game_log).to be_a NbaStats::Resources::TeamGameLog
      end
      it 'should be named team_game_log' do
        expect(team_game_log.name).to eq 'teamgamelog'
      end
      NbaStats::Resources::TeamGameLog::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(team_game_log.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .team_game_log

  end # client

end