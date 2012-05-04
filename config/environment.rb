ClubeDoPao::Application.configure do

config.action_mailer.delivery_method = :sendmail
# Defaults to:
# config.action_mailer.sendmail_settings = {
#   :location => '/usr/sbin/sendmail',
#   :arguments => '-i -t'
# }
config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = true

config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "bluesoft.com.br",
   :authentication => :plain,
   :user_name => "nfe-cosmos@bluesoft.com.br",
   :password => "bluesoft8437",
   :enable_starttls_auto => true
}

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ClubeDoPao::Application.initialize!

end