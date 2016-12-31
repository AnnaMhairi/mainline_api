class ApiEmailsController < ApplicationController
  def receive
    recipient = params[:email]
    Notifier.delay.welcome_email(recipient)
    flash[:notice] = "Message has been sent!"
    render :json => {:notice => flash[:notice]}
  end
end
