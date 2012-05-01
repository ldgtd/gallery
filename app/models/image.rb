require 'carrierwave/orm/activerecord'

class Image < ActiveRecord::Base
	belongs_to :image_store
	
	validates_presence_of :title

	mount_uploader :image_string, ImagesUploader

	# u = Image.new
	# u.image_string = params[:file]
	# u.image_string = File.open('somewhere')
	# u.save!
	# u.image_string.url # => '/url/to/file.png'
	# u.image_string.current_path # => 'path/to/file.png'
	# u.image_string.identifier # => 'file.png'

end
