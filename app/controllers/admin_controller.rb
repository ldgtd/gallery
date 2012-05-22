class AdminController < ApplicationController
	before_filter :authentication_required

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
  def create
    # image_params = params[:image_store].strip
    @image_store = ImageStore.new(:name => params[:image_store][:name], :description => params[:image_store][:description])

    respond_to do |format|
      if @image_store.save
        @image = Image.new(:image => params[:image_store][:image], :image_store_id => @image_store.id)
        if @image.save 
          format.html { redirect_to admins_url }
        else
          format.html { render action: "new" }
        end
        format.html { render action: "new" }
      end
    end
  end
 
  # PUT 
  def update
    @image_store = ImageStore.find(params[:id])

    respond_to do |format|
      if @image_store.update_attributes(:name => params[:image_store][:name], :description => params[:image_store][:description])
        @image = Image.new(:image => params[:image_store][:image], :image_store_id => @image_store.id)
        if @image.save
          format.html { redirect_to admins_url }
        else
          format.html { render action: "edit" }
        end
      else
        format.html { render action: "edit" }
      end 
    end
  end
  
  # DELETE 
  def show
    @image_store = ImageStore.find(params[:id])
    @image_store.destroy

    respond_to do |format|
      format.html { redirect_to admins_url }
    end
  end

end