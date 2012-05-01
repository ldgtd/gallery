class AddPartImageStringToImages < ActiveRecord::Migration
  def change
  	add_column :images, :image_string, :string

  end
end
