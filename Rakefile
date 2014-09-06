require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'nba_stats'
require 'nba_stats/discovery/discovery'
desc 'Discover an NBA.com stats API endpoint'
task :discover do
  NbaStats::Discovery.discover('http://stats.nba.com/stats/commonplayerinfo/?PlayerID=201567&SeasonType=Regular+Season&LeagueID=00')
end


