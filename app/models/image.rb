class Image < ActiveRecord::Base
	belongs_to :image_store
	
	validates_presence_of :title
end
