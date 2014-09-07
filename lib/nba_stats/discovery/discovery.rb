require 'addressable/uri'
require 'nba_stats/client'

module NbaStats

  module Discovery

    # Given a full API call URI, generates template resource and stats classes
    #
    # @param discovery_uri [String]
    # @return [String]
    def self.discover(discovery_uri)
      uri = Addressable::URI.parse(discovery_uri)
      client = NbaStats::Client.new

      output = ''
      output += "Discovering #{class_name(uri.path).upcase}\n"
      output += "------------------------------------------------\n"
      output += "Path: #{uri.path}\n"
      begin
        client.get(uri.path, {})
      rescue Exception => e
        output += "Required parameters: #{e.message}\n"
      end
      
      uri.query_values.each do |key, value|
        output += "#{key.underscore}=#{value}, "
      end
      output += "\n"

      json = JSON.parse(client.get(uri.path, uri.query_values))
      result_sets = json['resultSets']

      output += stats(uri)
      output += "\n"
      output += resources(uri, result_sets)
      output += "\n"
      output += spec(uri)
      output += "\n"
      output
    end

    # Returns a best guess at the potential api name given a path
    #
    # @param path [String]
    # @return [String]
    def self.class_name(path)
      path.split('/').last
    end

    # Generates a rough stats ruby file for the api call
    #
    # @param uri [String]
    # @return [String]
    def self.stats(uri)
      output = "------------------------------------------------\n"
      output += "/nba_stats/stats/#{class_name(uri.path)}.rb\n"
      output += "------------------------------------------------\n"
      output += "require 'nba_stats/resources/#{class_name(uri.path)}'

module NbaStats

  module #{class_name(uri.path)}

    # The path of the #{class_name(uri.path)} API
    #{class_name(uri.path).upcase}_PATH   = '#{uri.path}'

    # Calls the #{class_name(uri.path)} API and returns a #{class_name(uri.path)} resource.
    #
"
      uri.query_values.each do |key, value|
        output += "    # @param #{key.underscore} [xxxxxxxxxx]\n"
      end
      output+="    # @return [NbaStats::Resources::#{class_name(uri.path)}]
    def #{class_name(uri.path)}(\n"
      uri.query_values.each do |key, value|
        output += "        #{key.underscore}=#{value},\n"
      end
      output += "    )
      NbaStats::Resources::#{class_name(uri.path)}.new(
          get(#{class_name(uri.path).upcase}_PATH, {
"
      uri.query_values.each do |key, value|
        output += "              :#{key} => #{key.underscore},\n"
      end
      output += "          })
      )
    end

  end # #{class_name(uri.path)}

end
"
      output += '------------------------------------------------'
      output
    end

    # Generates a rough resource ruby file for the api call
    #
    # @param uri [String]
    # @param result_sets [Array]
    # @return [String]
    def self.resources(uri, result_sets)
      output = "------------------------------------------------\n"
      output += "/nba_stats/resources/#{class_name(uri.path)}.rb\n"
      output += "------------------------------------------------\n"

      output += "require 'nba_stats/resources/resource_base'
require 'nba_stats/constants'

module NbaStats

  module Resources

    class #{class_name(uri.path)} < ResourceBase

      # Array of valid result set names for this resource
      VALID_RESULT_SETS = [\n"

      result_sets.each do |result_set|
        output += "          :#{result_set['name'].underscore},"
        output += "    #"
        result_set['headers'].each do |h|
          output += ":#{h.underscore}, "
        end
        output += "\n"
      end

      output +="      ].freeze

      # @return [Array]
      def valid_result_sets
        VALID_RESULT_SETS
      end

    end # #{class_name(uri.path)}

  end

end\n"
      output += '------------------------------------------------'
      output
    end

    # Generates a rough spec ruby file for the api call
    #
    # @param uri [String]
    # @return [String]
    def self.spec(uri)
      output = "------------------------------------------------\n"
      output += "/spec/client/#{class_name(uri.path)}_spec.rb\n"
      output += "------------------------------------------------\n"

      output += "require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.#{class_name(uri.path)}' do
      #{class_name(uri.path)} = client.#{class_name(uri.path)}("

      uri.query_values.each do |key, value|
        output += "#{value}, "
      end

      output += ")
      it 'should return a #{class_name(uri.path)} resource' do
        expect(#{class_name(uri.path)}).to be_a NbaStats::Resources::#{class_name(uri.path)}
      end
      it 'should be named #{class_name(uri.path)}' do
        expect(#{class_name(uri.path)}.name).to eq '#{class_name(uri.path)}'
      end
      NbaStats::Resources::#{class_name(uri.path)}::VALID_RESULT_SETS.each do |valid_result_set|
        describe \".\#{valid_result_set}\" do
          it 'should return an Array' do
            expect(#{class_name(uri.path)}.send(valid_result_set)).to be_a Array
          end
        end
      end
    end # .#{class_name(uri.path)}

  end # client

end\n"
      output += '------------------------------------------------'
      output
    end

  end # Discovery

end