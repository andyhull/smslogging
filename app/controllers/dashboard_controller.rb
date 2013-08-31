class DashboardController < ApplicationController
  def index
  	@user = current_user
  	@sid = current_user.sid
  	@sms = get_sms_from_twilio(@user)
  end

  def add_sid_to_twilio_connect_button(sid)
  	
  end

  def get_sms_from_twilio(current_user)
  	current_user
  end
end
