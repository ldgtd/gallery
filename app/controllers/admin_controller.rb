class AdminController < ApplicationController
	before_filter :authentication_required
	layout 'admin'

	def index
    @image_stores = ImageStore.all
    @images = Image.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end


  def new
    @image_store = ImageStore.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET 
  def edit
    @image_store = ImageStore.find(params[:id])
  end

  # POST 
  # POST 
  def create
    @image_store = ImageStore.new(params[:image_store])

    respond_to do |format|
      if @image_store.save
        format.html { redirect_to admins_url }
        
      else
        format.html { render action: "new" }
      end
    end
  end
 
  # PUT 
  def update
    @image_store = ImageStore.find(params[:id])

    respond_to do |format|
      if @image_store.update_attributes(params[:image_store])
        format.html { redirect_to admins_url }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE 
  def destroy
    @image_store = ImageStore.find(params[:id])
    @image_store.destroy

    respond_to do |format|
      format.html { redirect_to admins_url }
    end
  end
end