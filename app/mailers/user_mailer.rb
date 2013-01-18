class UserMailer < ActionMailer::Base
	
	def contact_message(message)
  	@message = message
		mail(:to => 'ludovic.turmel@gmailcom.ch', :subject => 'Contact from website', :from => @message.email)
	end

end
