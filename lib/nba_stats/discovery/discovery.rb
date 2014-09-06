require 'addressable/uri'
require 'nba_stats/client'

module NbaStats

  module Discovery

    def self.discover(discovery_uri)
      uri = Addressable::URI.parse(discovery_uri)
      client = NbaStats::Client.new

      puts "Discovering #{class_name(uri.path)}".upcase
      puts '------------------------------------------------'
      puts "Path: #{uri.path}"
      begin
        client.get(uri.path, {})
      rescue Exception => e
        puts "Required parameters: #{e.message}\n"
      end

      output = ''
      uri.query_values.each do |key, value|
        output += "#{key.underscore}=#{value}, "
      end
      output += "\n"

      json = JSON.parse(client.get(uri.path, uri.query_values))
      result_sets = json['resultSets']

      output += stats(client, uri, result_sets)
      output += "\n"
      output += resources(client, uri, result_sets)
      puts output
    end

    def self.class_name(path)
      path.split('/').last
    end

    def self.stats(client, uri, result_sets)
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
    end

    def self.resources(client, uri, result_sets)
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
    end

  end # Discovery

end