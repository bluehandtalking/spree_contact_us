class Spree::ContactUs::ContactMailer < ActionMailer::Base
  def contact_email(contact)
    @contact = contact

    mail :from    => (SpreeContactUs.mailer_from || contact.email),
         :subject => (SpreeContactUs.require_subject ? @contact.subject : t('spree.contact_us.contact_mailer.contact_email.subject', :email => contact.email)),
         :to      => SpreeContactUs.mailer_to
  end
end
