$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hublot/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hublot"
  s.version     = Hublot::VERSION
  s.authors     = ["Brett Shollenberger"]
  s.email       = ["brett.shollenberger@gmail.com"]
  s.homepage    = "brettshollenberger.com"
  s.summary     = "Adds datetime humanization to Active Record objects."
  s.description = "Extends ActiveSupport::TimeWithZone"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "sqlite3"
end
