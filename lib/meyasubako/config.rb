require 'active_support/configurable'

module Meyasubako
  class Config
    include ActiveSupport::Configurable

    config_accessor :to
    config_accessor :from

    configure do |config|
      config.to   = 'username@example.com'
      config.from = 'username@example.com'
    end
  end
end
