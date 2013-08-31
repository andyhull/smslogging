class DashboardController < ApplicationController
  def index
  	@user = current_user
  	if current_user.sid
	  	@sid = current_user.sid
	  	@sms = get_sms_from_twilio(@user)
	  end
  end

  def connect
  	@user = current_user
  	if params['AccountSid'] || @user.sid
	  	sid = params['AccountSid']
	  	@user.sid = sid
	  	@user.save
	  	redirect_to '/dashboard'
	  end

  end

  def get_sms_from_twilio(current_user)
	  account_sid = current_user.sid
		auth_token =  ENV["TWILIO_TOKEN"]
		@client = Twilio::REST::Client.new account_sid, auth_token
		# Loop over messages and print out a property for each one
		@messages = @client.account.sms.messages

  end

end
