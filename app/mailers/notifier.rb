class Notifier < ApplicationMailer
  default from: 'no-reply@example.com'

  def welcome_email(recipient)
    mail(to: recipient)
  end
end
