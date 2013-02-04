require 'zippy'

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
    @image_store = ImageStore.new(:name => params[:image_store][:name], :description => params[:image_store][:description])
    
    Zippy.each(params[:image_store][:image].path) do |filename, data|
      if data.present? && File.basename(filename) !~ /^\./
        file = CarrierWave::SanitizedFile.new({
          :tempfile => StringIO.new(data),
          :filename => filename,
          :content_type => content_type_of_filename(filename)
        })
        image = @image_store.images.build(:title => File.basename(filename))
        image.image = file
      end
    end

    respond_to do |format|
      if @image_store.save!
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
      if @image_store.update_attributes(:name => params[:image_store][:name], :description => params[:image_store][:description])
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

  private

  def content_type_of_filename(filename)
    case File.extname(filename)
    when 'jpg', 'jpeg'
      'image/jpeg'
    when 'png'
      'image/png'
    else
      'application/octet-stream'
    end
  end
end
