
class Notifier < ActionMailer::Base
  default :from => "notifications@example.com"

  def welcome_email(member)
    @member = member
    @url  = "http://example.com/login"
    mail(:to => member.email, :subject => "Clube do pao")
  end
  
  def event_email(event)
    @event = event
    mail(:to => event.member.email, :subject => "Seu dia do Clube do pao")
  end
end
