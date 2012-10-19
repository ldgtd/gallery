class UserMailer < ActionMailer::Base
	
	def contact_message(message)
  	@message = message
		mail(:to => 'ludovic.turmel@liquid-concept.ch', :subject => 'Contact from website', :from => @message.email)
	end

end
