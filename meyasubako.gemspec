$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "meyasubako/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "meyasubako"
  s.version     = Meyasubako::VERSION
  s.authors     = ["kami"]
  s.email       = ["kami30k@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Meyasubako."
  s.description = "TODO: Description of Meyasubako."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "sass-rails"
  s.add_dependency "coffee-rails"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "letter_opener_web"
end
