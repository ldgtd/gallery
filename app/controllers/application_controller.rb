class ApplicationController < ActionController::Base
  protect_from_forgery

  private
	def authentication_required
  	if !session[:logged]
  		redirect_to login_url
  	end
  end
end