class ContactController < ApplicationController

before_filter :authentication_required

	def new
	  @message = Message.new
	end

	def create
	  @message = Message.new(params[:message])
	  
	  if @message.valid?
	   	ContactMailer.contact_message(@message).deliver
	    flash[:notice] = "Message sent! Thank you for contacting me."
	    redirect_to root_url
	  else
	    render :action => 'new'
	  end
	end
end
