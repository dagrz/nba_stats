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
      it 'should return 1 games' do
        expect(box_score.game_summary.count).to eq 1
      end
    end # .box_score

    describe '.common_all_players' do
      common_all_players = client.common_all_players('2013-14')
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
      it 'should return 1 player' do
        expect(common_player_info.common_player_info.count).to eq 1
      end
      it 'should return info about Kevin Love' do
        expect(common_player_info.player_headline_stats[0][:player_name]).to eq 'Kevin Love'
      end
    end # .common_all_players

    describe '.player_profile' do
      player_profile = client.player_profile(201567, '2013-14', '2010-11', '2013-14')
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
      it 'should return 1 player' do
        expect(player_profile.overview_career_avg.count).to eq 1
      end
    end # .player_profile

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

    describe '.common_team_roster' do
      common_team_roster = client.common_team_roster(1610612746, '2013-14')
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
      team_game_log = client.team_game_log(1610612746, '2013-14')
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

    describe '.play_by_play' do
      play_by_play = client.play_by_play('0021301230')
      it 'should return a play_by_play resource' do
        expect(play_by_play).to be_a NbaStats::Resources::PlayByPlay
      end
      it 'should be named play_by_play' do
        expect(play_by_play.name).to eq 'playbyplay'
      end
      NbaStats::Resources::PlayByPlay::VALID_RESULT_SETS.each do |valid_result_set|
        describe ".#{valid_result_set}" do
          it 'should return an Array' do
            expect(play_by_play.send(valid_result_set)).to be_a Array
          end
        end
      end
      it 'should return the same game id as requested' do
        expect(play_by_play.play_by_play[0][:game_id]).to eq '0021301230'
      end
    end # .play_by_play

  end # client

end