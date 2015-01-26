module Meyasubako
  class MeyasubakoController < ActionController::Base
    def create
      MeyasubakoMailer.email(params[:content]).deliver_now

      render nothing: true
    end
  end
end
