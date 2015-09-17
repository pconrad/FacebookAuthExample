OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  puts "Yo, here is dat thing: ENV[\"FACEBOOK_APP_ID\"]=" + ENV["FACEBOOK_APP_ID"] + "ENV[\"FACEBOOK_SECRET\"]=" + ENV["FACEBOOK_SECRET"]
  provider :facebook, ENV["FACEBOOK_APP_ID"], ENV["FACEBOOK_SECRET"], {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end