class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def notify

    body_text = 'this is a test'
    to_number = '+17076881895'

    client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
    message = client.messages.create from: '+17078818036', to: to_number, body: body_text

    render plain: message.status
    # render nothing: true

  end


end