module Meyasubako
  class MeyasubakoMailer < ActionMailer::Base
    def email(content)
      @content = content

      mail(to: 'kami30k@gmail.com', from: 'kami30k@gmail.com', template_path: 'meyasubako_mailer')
    end
  end
end
