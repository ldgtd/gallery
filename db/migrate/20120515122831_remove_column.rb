class RemoveColumn < ActiveRecord::Migration
  def self.up
  	remove_column :images, :image
  	remove_column :images, :images
  end

  def self.down
  	add_column :images, :image, :string
  end
end
