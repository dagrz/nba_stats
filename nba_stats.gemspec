# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nba_stats/version'

Gem::Specification.new do |spec|
  spec.name          = 'nba_stats'
  spec.version       = NbaStats::VERSION
  spec.authors       = ['Daniel Grzelak']
  spec.email         = ['dan.grzelak@gmail.com']
  spec.summary       = %q{A ruby interface for the stats.nba.com json API.}
  spec.description   = spec.summary
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'json', '~> 1.8'
  spec.add_dependency 'rest-client', '~> 1.7'
  spec.add_dependency 'addressable', '~> 2.3'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
