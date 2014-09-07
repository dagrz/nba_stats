require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'nba_stats'
require 'nba_stats/discovery/discovery'
desc 'Discover an NBA.com stats API endpoint'
task :discover do
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/scoreboard/?LeagueID=00&gameDate=03%2F05%2F2014&DayOffset=0&date=Wed+Mar+05+2014+00%3A00%3A00+GMT%2B1100+(EST)')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/boxscore?GameID=0021300904&RangeType=0&StartPeriod=0&EndPeriod=0&StartRange=0&EndRange=0')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/commonallplayers/?LeagueID=00&Season=2013-14&IsOnlyCurrentSeason=0')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/commonplayerinfo/?PlayerID=201567&SeasonType=Regular+Season&LeagueID=00')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/playerprofile?Season=2013-14&SeasonType=Regular+Season&LeagueID=00&PlayerID=201567&GraphStartSeason=2008-09&GraphEndSeason=2014-15&GraphStat=PTS')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/teaminfocommon?Season=2013-14&SeasonType=Regular+Season&LeagueID=00&TeamID=1610612746')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/commonteamroster?Season=2013-14&LeagueID=00&TeamID=1610612746')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/teamgamelog?Season=2013-14&SeasonType=Regular+Season&LeagueID=00&TeamID=1610612746')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/teamyearbyyearstats?LeagueID=00&PerMode=Totals&SeasonType=Regular+Season&TeamID=1610612755&Season=2013-14')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/commonteamyears?LeagueID=00')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/shotchartdetail?Season=2013-14&SeasonType=Regular+Season&LeagueID=00&TeamID=1610612755&PlayerID=0&GameID=&Outcome=&Location=&Month=0&SeasonSegment=&DateFrom=&DateTo=&OpponentTeamID=0&VsConference=&VsDivision=&Position=&RookieYear=&GameSegment=&Period=0&LastNGames=0&ContextFilter=&ContextMeasure=FG_PCT')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/playbyplay?GameID=0021300901&StartPeriod=0&EndPeriod=0&tabView=playbyplay')
  # puts NbaStats::Discovery.discover('http://stats.nba.com/stats/videoevents?LeagueID=00&Season=2012-13&SeasonType=Regular+Season&TeamID=0&PlayerID=0&GameID=0021300901&Outcome=&Location=&Month=0&SeasonSegment=&DateFrom=&DateTo=&OpponentTeamID=0&VsConference=&VsDivision=&Position=&RookieYear=&GameSegment=&Period=0&LastNGames=0&ClutchTime=&AheadBehind=&PointDiff=&RangeType=1&StartPeriod=1&EndPeriod=10&StartRange=0&EndRange=0&ContextFilter=&ContextMeasure=FG_PCT&GameEventID=4')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/boxscorefourfactors?GameID=0021300901&RangeType=0&StartPeriod=0&EndPeriod=0&StartRange=0&EndRange=0&tabView=playbyplay')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/boxscoreusage?GameID=0021300901&RangeType=0&StartPeriod=0&EndPeriod=0&StartRange=0&EndRange=0&tabView=playbyplay')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/boxscorescoring?GameID=0021300901&RangeType=0&StartPeriod=0&EndPeriod=0&StartRange=0&EndRange=0&tabView=playbyplay')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/boxscoremisc?GameID=0021300901&RangeType=0&StartPeriod=0&EndPeriod=0&StartRange=0&EndRange=0&tabView=playbyplay')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/boxscoreadvanced?GameID=0021300901&RangeType=0&StartPeriod=0&EndPeriod=0&StartRange=0&EndRange=0&tabView=playbyplay')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/leaguedashlineups?Season=2013-14&SeasonType=Regular+Season&LeagueID=00&TeamID=&MeasureType=Base&PerMode=PerGame&PlusMinus=N&PaceAdjust=N&Rank=N&Outcome=&Location=&Month=0&SeasonSegment=&DateFrom=&DateTo=&OpponentTeamID=0&VsConference=&VsDivision=&GameSegment=&Period=0&LastNGames=0&GroupQuantity=5&GameScope=&PlayerExperience=&PlayerPosition=&StarterBench=')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/leaguedashplayerstats?Season=2013-14&SeasonType=Regular+Season&LeagueID=00&MeasureType=Base&PerMode=PerGame&PlusMinus=N&PaceAdjust=N&Rank=N&Outcome=&Location=&Month=0&SeasonSegment=&DateFrom=&DateTo=&OpponentTeamID=0&VsConference=&VsDivision=&GameSegment=&Period=0&LastNGames=0&GameScope=&PlayerExperience=&PlayerPosition=&StarterBench=&Conf=Both')
  # puts NbaStats::Discovery.discover('http://stats.nba.com/stats/leaguedashteamstats?Season=2013-14&AllStarSeason=2013-14&SeasonType=All+Star&LeagueID=00&MeasureType=Base&PerMode=Totals&PlusMinus=N&PaceAdjust=N&Rank=N&Outcome=&Location=&Month=0&SeasonSegment=&DateFrom=&DateTo=&OpponentTeamID=0&VsConference=&VsDivision=&GameSegment=&Period=0&LastNGames=0&GameScope=&PlayerExperience=&PlayerPosition=&StarterBench=')
  # puts NbaStats::Discovery.discover('http://stats.nba.com/stats/leaderstiles?Season=2013-14&SeasonType=Regular+Season&LeagueID=00&Stat=REB&PlayerOrTeam=Player&GameScope=Season&PlayerScope=All+Players')
  # puts NbaStats::Discovery.discover('http://stats.nba.com/stats/leagueleaders?LeagueID=00&PerMode=PerGame&StatCategory=PTS&Season=All+Time&SeasonType=Regular+Season&Scope=S')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/playercareerstats?PlayerID=201609&LeagueID=00&PerMode=Totals')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/homepageleaders?Season=2013-14&SeasonType=Playoffs&LeagueID=00&GameScope=Season&StatCategory=Points&PlayerScope=All+Players&PlayerOrTeam=Team&viewType=graph')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/franchisehistory?LeagueID=00')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/draftcombineplayeranthro?LeagueID=00&SeasonYear=2014-15')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/draftcombinedrillresults?LeagueID=00&SeasonYear=2014-15')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/draftcombinenonstationaryshooting/?LeagueID=00&SeasonYear=2014-15')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/draftcombinespotshooting?LeagueID=00&SeasonYear=2014-15')
  puts NbaStats::Discovery.discover('http://stats.nba.com/stats/draftcombinestats/?LeagueID=00&draftyear=2014&SeasonYear=2014-15')
end


