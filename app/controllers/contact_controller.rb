#encoding: utf-8

class ContactController < ApplicationController
layout 'contact'

	def new
	  @message = Message.new
	end

	def create
	  @message = Message.new(params[:message])
	  
	  if @message.valid?
	   	ContactMailer.contact_message(@message).deliver
	    redirect_to root_url
	  else
	    render :action => 'new'
	  end
	end
end
