class WelcomeMailer < ApplicationMailer
  default from: "iamramiro578@gmail.com"

  def welcom_mailer(user)
    @user = user
    mail(to: @user.email, subject: "welcome to my page")
  end

end
