class GalleriesController < ApplicationController
  def index 

  end

  def show
    @image_store = ImageStore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image_store }
    end
  end

end
