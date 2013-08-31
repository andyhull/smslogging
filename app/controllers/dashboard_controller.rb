class DashboardController < ApplicationController
  def index
  	@user = current_user
  	@sid = current_user.sid
  	@sms = get_sms_from_twilio(@user)
  end

  def connect
  	sid = params['AccountSid']
  	@user = current_user
  	@user.sid = sid
  	@user.save

  	redirect_to '/dashboard'
  end

  def add_sid_to_twilio_connect_button(sid)
  	
  end

  def get_sms_from_twilio(current_user)
	  account_sid = current_user.sid
		auth_token =  ENV["TWILIO_TOKEN"]
		@client = Twilio::REST::Client.new account_sid, auth_token
		binding.pry
		 
		# Loop over messages and print out a property for each one
		@messages = @client.account.sms.messages

  end

end
