class SessionsController < ApplicationController
  layout 'admin'

  def new
  end

  #recup des data du form pour le login et test validation
  def create
  	if params[:name] == 'admin' && params[:password] == 'admin'
  		session[:logged] = true
  		redirect_to admin_url
  	else
  		session[:logged] = false
  		redirect_to login_url, :alert => "Invalid user/password combination"
  	end
  end

  #detruire la session
  def destroy
  	session[:logged] = false
  	redirect_to galleries_url, :notice => "Logged out"
  end
end
