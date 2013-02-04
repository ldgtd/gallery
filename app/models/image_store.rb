class ImageStore < ActiveRecord::Base

	has_many :images

	validates_presence_of :name

	#rends accesible les champs passer dans ma BD, par defaut tout es inaccesible !
	attr_accessible :name, :description
end
