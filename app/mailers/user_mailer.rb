class UserMailer < ApplicationMailer
  def an_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail to: 'fake@email.address', subject: 'welcome to my awesome site' # TODO change!
  end
end
