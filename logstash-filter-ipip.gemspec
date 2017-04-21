# coding: utf-8
#lib = File.expand_path('../lib', __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#require 'seventeen_mon/version'

Gem::Specification.new do |s|
  s.name = 'logstash-filter-ipip'
  s.version = '2.0.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "This ipip filter adds information about the geographical location of IP addresses, based on data from the database from ipip.net."
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["bittopaz", "vinsonzou"]
  s.email = 'vinsoncou@gmail.com'
  s.homepage = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'lru_redux', "~> 1.1.0", '>= 1.1.0'
  s.add_development_dependency 'logstash-devutils'

  #modi by j 20170421 add ipip for free with *.data
  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake", "~> 10.1.1"
  s.add_development_dependency "rspec", "~> 2.14.1"
end
