require 'nba_stats'
require 'date'

module NbaStats

  module Resources

    class ResourceBase

      def pretty_generate_names
        result = ''
        result_sets.each do |result_set|
          result += "#{result_set['name'].underscore}\n"
        end
        result
      end

    end # ResourceBase

  end

end