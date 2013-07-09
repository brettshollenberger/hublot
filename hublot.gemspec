# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hublot/version'

Gem::Specification.new do |gem|
  gem.name          = "hublot"
  gem.version       = Hublot::VERSION
  gem.authors       = ["Brett Shollenberger"]
  gem.email         = ["brett.shollenberger@gmail.com"]
  gem.description   = "Date-sensitive humanized datetim"
  gem.summary       = "Include hublot inside any class that includes a created_at attribute, and call the pretty method on that object to return context-sensitive datetime."
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'active_support'
  gem.add_development_dependency 'i18n'
  gem.add_development_dependency 'rake'
end
