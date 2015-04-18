$:.unshift File.expand_path('../../../lib', __FILE__)

require 'action_controller/railtie'
require 'action_view/railtie'
require 'action_mailer/railtie'
require 'sprockets/railtie'

require 'jquery-rails'
require 'letter_opener_web'

require 'meyasubako'

module Dummy
  class Application < Rails::Application
    config.secret_token = 'abcdefghijklmnopqrstuvwxyz0123456789'
    config.session_store :cookie_store, key: '_dummy_session'
    config.eager_load = false
    config.active_support.deprecation = :log

    case Rails.env.to_sym
    when :development
      config.action_mailer.delivery_method = :letter_opener_web
    when :test
      config.action_mailer.delivery_method = :test
    end
  end
end

Dummy::Application.initialize!

Dummy::Application.routes.draw do
  mount Meyasubako::Engine => '/meyasubako'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine => '/letter_opener'
  end

  root 'pages#index'
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

class PagesController < ApplicationController
  def index
  end
end

Meyasubako.configure do |config|
  config.to   = 'test@example.com'
  config.from = 'test@example.com'
end
