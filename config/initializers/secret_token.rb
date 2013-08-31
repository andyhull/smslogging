# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
if Rails.env.production? && ENV['SECRET_TOKEN'].blank?
	raise 'The SECRET_TOKEN environment variable is not set.\n
	To generate it, run "rake secret", then set it with "heroku config:set SECRET_TOKEN=the_token_you_generated"'
end

Smslogging::Application.config.secret_token = ENV['SECRET_TOKEN'] || '971937d30e0203d054cd36421e9f03a571f9b9bb45a014de35f47943835c13df9b6ad470392a2613b68951fc81d4a1b23b049db2b830c00faa9645ef1421451e'
