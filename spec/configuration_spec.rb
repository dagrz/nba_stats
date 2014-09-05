require 'spec_helper'

describe NbaStats do

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

  end # configuration

end