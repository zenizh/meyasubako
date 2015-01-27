ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../dummy/config/environment', __FILE__)

require 'rspec/rails'
require 'capybara/rails'
require 'capybara/rspec'
require 'capybara/email/rspec'
require 'capybara/poltergeist'

require 'meyasubako'

Capybara.default_driver    = :poltergeist
Capybara.javascript_driver = :poltergeist

RSpec.configure do |config|
  config.include Capybara::DSL
end
