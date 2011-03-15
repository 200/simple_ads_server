# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "simple_ads_server/version"

Gem::Specification.new do |s|
  s.add_dependency 'rails', '3.0.3'

  s.add_dependency 'haml'
  s.add_dependency 'jquery-rails'

  s.add_dependency "rspec-rails"
  s.add_dependency "rspec"
  s.add_dependency "rspec-core"      
  s.add_dependency "rspec-expectations"
  s.add_dependency "rspec-mocks"
  
  s.add_dependency 'capybara'
  s.add_dependency 'database_cleaner'
  s.add_dependency 'cucumber-rails'
  s.add_dependency 'cucumber'
  s.add_dependency 'spork'
  s.add_dependency 'launchy'

  s.add_dependency 'factory_girl_rails'

  s.name        = "simple_ads_server"
  s.version     = SimpleAdsServer::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "simple_ads_server"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
