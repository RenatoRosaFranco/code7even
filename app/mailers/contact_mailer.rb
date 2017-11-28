class ContactMailer < ApplicationMailer

  default from: 'no-reply@code7even.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sended.subject
  #
  def sended(contact)
    @greeting = "Hi"
    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.received.subject
  #
  def received(contact)
    @greeting = "Hi"
    mail to: "to@example.org"
  end
end
