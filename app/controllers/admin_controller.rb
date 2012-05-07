class AdminController < ApplicationController
	before_filter :authentication_required
	layout 'admin'

	def show
 
 	end
end
