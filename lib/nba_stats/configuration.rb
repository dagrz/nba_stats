module NbaStats

  module Configuration
    VALID_CONNECTION_KEYS = [:endpoint].freeze
    VALID_OPTIONS_KEYS    = [:user_agent, :accept].freeze
    VALID_CONFIG_KEYS     = VALID_CONNECTION_KEYS + VALID_OPTIONS_KEYS

    DEFAULT_ENDPOINT    = 'http://stats.nba.com'
    DEFAULT_USER_AGENT  = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.94 Safari/537.36'.freeze
    DEFAULT_ACCEPT      = 'application/json'
    DEFAULT_LEAGUE_ID   = '00'

    # Build accessor methods for every config options so we can do this
    attr_accessor *VALID_CONFIG_KEYS

    # Make sure we have the default values set when we get 'extended'
    def self.extended(base)
      base.reset
    end

    # Reset all options to default values
    def reset
      self.endpoint   = DEFAULT_ENDPOINT
      self.user_agent = DEFAULT_USER_AGENT
      self.accept     = DEFAULT_ACCEPT
    end

    def configure
      yield self
    end

    def options
      Hash[ * VALID_CONFIG_KEYS.map { |key| [key, send(key)] }.flatten ]
    end

  end # Configuration

end