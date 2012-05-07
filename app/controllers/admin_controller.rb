class AdminController < ApplicationController
	before_filter :authentication_required
	layout 'admin'

	def index
    @image_stores = ImageStore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @image_stores }
    end
  end

  def new
    @image_store = ImageStore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image_store }
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
        format.html { redirect_to admin_url, notice: 'ImageStore was successfully created.' }
        
      else
        format.html { render action: "new" }
        format.json { render json: @image_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT 
  # PUT 
  def update
    @image_store = ImageStore.find(params[:id])

    respond_to do |format|
      if @image_store.update_attributes(params[:gallerie])
        format.html { redirect_to @image_store, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE 
  # DELETE 
  def destroy
    @gallery = ImageStore.find(params[:id])
    @gallery.destroy

    respond_to do |format|
      format.html { redirect_to galleries_url }
      format.json { head :no_content }
    end
  end
end
