class ApiEmailsController < ApplicationController
  def receive
    recipient = params[:email]
    Notifier.delay.welcome_email(recipient)
  end
end
