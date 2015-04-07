class UserMailer < Devise::Mailer
 include Devise::Mailers::Helpers
 # here we can override default Devise mailing stuff...I didn't end up needing it (yet)
end
