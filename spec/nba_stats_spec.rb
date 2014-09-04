require 'spec_helper'
require 'rest_client'

describe NbaStats do

  describe 'nba_stats' do

    it 'should have a version' do
      expect(NbaStats::VERSION).to be_truthy
    end

  end

  describe 'client' do
    client = NbaStats::Client.new

    describe '.scoreboard' do
      scoreboard = client.scoreboard(NbaStats::Configuration::DEFAULT_LEAGUE_ID, Date.parse('11-10-2013'), 0)
      it 'should return a scoreboard resource' do
        expect(scoreboard.class.to_s).to eq 'NbaStats::Resources::Scoreboard'
      end
      it 'should be named scoreboard' do
        expect(scoreboard.name).to eq 'scoreboard'
      end
    end

  end

  describe 'configuration' do

    NbaStats::Configuration::VALID_CONFIG_KEYS.each do |key|
      describe ".#{key}" do
        it 'should return the default value' do
          expect(NbaStats.send(key)).to eq NbaStats::Configuration.const_get("DEFAULT_#{key.upcase}")
        end
      end
    end

    describe '.options' do
      it 'should return the correct number of configuration keys' do
        expect(NbaStats.options.count).to eq NbaStats::Configuration::VALID_CONFIG_KEYS.count
      end
    end

    after do
      NbaStats.reset
    end

    describe '.configure' do
      NbaStats::Configuration::VALID_CONFIG_KEYS.each do |key|
        it "should set the #{key}" do
          NbaStats.configure do |config|
            config.send("#{key}=", key)
            expect(NbaStats.send(key)).to eq key
          end
        end
      end
    end

  end
end