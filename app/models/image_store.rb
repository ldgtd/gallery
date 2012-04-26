class ImageStore < ActiveRecord::Base
	has_many :image

	validates_presence_of :name
end
