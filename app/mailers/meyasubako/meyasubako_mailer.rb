module Meyasubako
  class MeyasubakoMailer < ActionMailer::Base
    default template_path: 'meyasubako_mailer'

    def email(content)
      @content = content

      mail(
        to:      Meyasubako.config.to,
        from:    Meyasubako.config.from,
        subject: t('meyasubako.subject')
      )
    end
  end
end
