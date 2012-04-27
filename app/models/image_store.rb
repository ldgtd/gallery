class ImageStore < ActiveRecord::Base
	has_many :images

	validates_presence_of :named
end
