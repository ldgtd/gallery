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

  # def create
  #   zip_file = params[:gallery].delete(:zip_file)
  #   @gallery = Gallery.new(params[:gallery])

  #   if @gallery.save
  #     #in gemfile: gem "zippy"
  #     Zippy.each(zip_file.tempfile) do |name, file|
  #       io = FilelessFile.new(file)
  #       io.original_filename= name

  #       img = Image.new(:gallery_id => @gallery.id)
  #       img.image= io
  #       img.save
  #     end     
  #   end
  #   respond_with(@gallery, :location => galleries_path)
  # end
end

