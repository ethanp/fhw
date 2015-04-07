class ApplicationMailer < ActionMailer::Base
  default from: ENV["FRENCH_HOUSE_GMAIL"]
  layout 'mailer'
end
