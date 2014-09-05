require 'nba_stats/helper'
require 'nba_stats/errors'

module NbaStats

  module Resources

    class ResourceBase

      attr_reader :json, :name, :params, :result_sets

      # Initialize a new ResourceBase object
      #
      # @param resource_json [String]
      # @return [NbaStats::Resources::ResourceBase]
      def initialize(resource_json)
        @json = JSON.parse(resource_json)
        parse_base
      end

      # Provide the object JSON as a pretty printed string
      #
      # @return [String]
      def to_s
        JSON.pretty_generate(@json)
      end

      # Must be implemented by sub classes
      #
      # @return [Array]
      def valid_result_sets
        Array.new
      end

      private

      # Parse the returned API object.do
      # Initialize instance variables and define accessors.
      def parse_base
        @name = json['resource']
        @params = json['parameters']
        @result_sets = json['resultSets']

        result_sets.each do |result_set|
          result_set_name = result_set['name'].underscore
          # puts "#{result_set_name}"
          # heads = "    "
          # result_set['headers'].each do |h|
          #   heads += ":#{h.underscore}, "
          # end
          # puts heads
          if valid_result_sets.include? result_set_name.to_sym
            instance_variable_set "@#{result_set_name}", row_set_to_array_of_hashes(result_set['headers'], result_set['rowSet'])
            singleton_class.class_eval do; attr_accessor result_set_name; end
          else
            raise BadResponseError.new("Unexpected result set name #{result_set_name}.")
          end
        end
      end

      # Convert a returned API row set into an array of hashes
      #
      # @param headers [Array]
      # @param row_set [Array]
      # @return [Hash]
      def row_set_to_array_of_hashes(headers, row_set)
        result = Array.new
        row_set.each do |row|
          if row.count == headers.count
            row_hash = Hash.new
            headers.zip(row).each do |header, value|
              row_hash[header.underscore.to_sym] = value
            end
            result.push row_hash
          else
            raise BadResponseError.new("Row set header count (#{headers.count}) doesn't match row item count (#{row.count}).")
          end
        end
        result
      end

    end # ResourceBase

  end

end
