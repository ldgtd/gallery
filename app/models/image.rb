require 'carrierwave/orm/activerecord'

class Image < ActiveRecord::Base
	belongs_to :image_store

	#rends accesible les champs passer dans ma BD, par defaut tout es inaccesible !
	attr_accessible :title, :description, :image, :image_store_id
	
	validates_presence_of :image

	mount_uploader :image, ImagesUploader
end
