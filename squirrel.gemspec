$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "squirrel/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "squirrel"
  s.version     = Squirrel::VERSION
  s.authors     = ["gyorou"]
  s.email       = ["gyorou@tjjtds.me"]
  s.homepage    = ""
  s.summary     = "yet another mountable bbs engine"
  s.description = "rails mountable bbs engine"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "rails_kindeditor"
  s.add_dependency "will_paginate"

  s.add_development_dependency "sqlite3"
end
