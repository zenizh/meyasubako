module Meyasubako
  class MeyasubakoMailer < ActionMailer::Base
    default template_path: 'meyasubako_mailer'

    def email(content)
      @content = content

      mail(to: 'kami30k@gmail.com', from: 'kami30k@gmail.com')
    end
  end
end
