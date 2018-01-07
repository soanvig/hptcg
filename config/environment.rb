# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :user_name => ENV['SENDGRID_USER'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'https://hptcg.eu',
    :address => 'in-v3.mailjet.com',
    :port => 587,
    :authentication => :cram_md5,
    :enable_starttls_auto => true
}
