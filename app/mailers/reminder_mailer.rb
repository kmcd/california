class ReminderMailer < ActionMailer::Base
  default :from => "hotel@railsdojo.com"
  
  def password_email
    mail :to => "keith@dancingtext.com",
      :subject => "Your password reminder",
      :body => "Your password: #{Hotel.first.password}"
  end
end
