require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'nba_stats'
require 'nba_stats/helper'
require 'nba_stats/client'
require 'addressable/uri'
desc 'Discover an NBA.com stats API endpoint'
task :discover do
  discovery_uri = 'http://stats.nba.com/stats/commonplayerinfo/?PlayerID=201567&SeasonType=Regular+Season&LeagueID=00'
  uri = Addressable::URI.parse(discovery_uri)
  client = NbaStats::Client.new

  begin
    client.get(uri.path, {})
  rescue Exception => e
    puts e.message
  end

  output = ''
  uri.query_values.each do |key, value|
    output += "#{key.underscore}=#{value}, "
  end
  output += "\n\n"

  json = JSON.parse(client.get(uri.path, uri.query_values))
  result_sets = json['resultSets']
  result_sets.each do |result_set|
    output += ":#{result_set['name'].underscore},"
    output += "    #"
    result_set['headers'].each do |h|
      output += ":#{h.underscore}, "
    end
    output += "\n"
  end
  puts output
end


