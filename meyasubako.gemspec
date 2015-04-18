$:.unshift File.expand_path('../lib', __FILE__)

require 'meyasubako/version'

Gem::Specification.new do |s|
  s.name        = 'meyasubako'
  s.version     = Meyasubako::VERSION
  s.authors     = 'kami'
  s.email       = 'kami30k@gmail.com'
  s.homepage    = 'https://github.com/kami30k/meyasubako'
  s.summary     = 'Easy to install opinion box for Rails application.'
  s.description = 'Easy to install opinion box for Rails application.'
  s.license     = 'MIT'

  s.files = `git ls-files -z`.split("\x0")

  s.add_dependency 'rails'
  s.add_dependency 'sass-rails'
  s.add_dependency 'coffee-rails'
  s.add_dependency 'jquery-rails'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-email'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'letter_opener_web'
end
