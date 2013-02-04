class ContactMailer < ActionMailer::Base
	
	def contact_message(message)
  	@message = message
		mail(:to => 'maoui.maroussia@facebook.com', :subject => "#{@message.name} vous a contacter depuis Manon gallery", :from => @message.email, :body => @message.content)
	end

end