module Meyasubako
  class Engine < ::Rails::Engine
    isolate_namespace Meyasubako

    initializer 'meyasubako' do
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, Meyasubako::MeyasubakoHelper
      end
    end
  end
end
