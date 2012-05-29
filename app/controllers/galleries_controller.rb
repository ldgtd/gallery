class GalleriesController < ApplicationController
  
  def index
    @image_stores = ImageStore.all

    respond_to do |format|
      format.html # index.html.erb
    end 
  end

  def show
    @image_store = ImageStore.find(params[:id])
    @images = Image.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end
end

