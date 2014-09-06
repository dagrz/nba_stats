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
        output += "    # @param #{key.underscore} [xxxxxxxxxx], \n"
      end
      output+="    # @return [NbaStats::Resources::#{class_name(uri.path)}]
    def #{class_name(uri.path)}("
      uri.query_values.each do |key, value|
        output += "#{key.underscore}=#{value}, "
      end
      output += ")
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

  end # Discovery

end