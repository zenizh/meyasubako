$:.push File.expand_path('../lib', __FILE__)

require 'meyasubako/version'

Gem::Specification.new do |s|
  s.name        = 'meyasubako'
  s.version     = Meyasubako::VERSION
  s.authors     = ['kami']
  s.email       = ['kami30k@gmail.com']
  s.homepage    = 'https://github.com/kami30k/meyasubako'
  s.summary     = 'Easy to install opinion box for Rails application.'
  s.description = 'Easy to install opinion box for Rails application.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 4.2.0'
  s.add_dependency 'sass-rails'
  s.add_dependency 'coffee-rails'
  s.add_dependency 'jquery-rails'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'letter_opener_web'
end
