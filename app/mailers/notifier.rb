class Notifier < ActionMailer::Base
  default :from => "notifications@example.com"

  def welcome_email(member)
    @member = member
    @url  = "http://example.com/login"
    mail(:to => member.email, :subject => "Welcome to Clube do pão")
  end
  
end
