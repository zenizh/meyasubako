require 'meyasubako/engine'

module Meyasubako
  autoload :Config, 'meyasubako/config'

  class << self
    def configure
      yield config
    end

    def config
      @config ||= Config.new
    end
  end
end
