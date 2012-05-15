require 'carrierwave/orm/activerecord'

class Image < ActiveRecord::Base
	belongs_to :image_store
	
	validates_presence_of :title
	validates_presence_of :image_string

	#rends accesible les champs passer dans ma BD, par defaut tout es inaccesible !
	attr_accessible :title, :image_string

	mount_uploader :image_string, ImagesUploader
end
