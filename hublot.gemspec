$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hublot/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hublot"
  s.version     = Hublot::VERSION
  s.authors     = ["Brett Shollenberger"]
  s.email       = ["brett.shollenberger@gmail.com"]
  s.homepage    = "http://github.com/brettshollenberger/hublot"
  s.summary     = "Adds datetime humanization to Active Record objects."
  s.description = "Humanizes datetime for Active Record objects."
  s.license  = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'activesupport'
  s.add_development_dependency 'i18n'
  s.add_development_dependency 'rake'
end
