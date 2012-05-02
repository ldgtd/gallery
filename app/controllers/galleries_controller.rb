class GalleriesController < ApplicationController
  
  def index
    @image_stores = ImageStore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @image_store }
    end 
  end

  def show
    @image_stores = ImageStore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image_stores }
    end
  end

end
