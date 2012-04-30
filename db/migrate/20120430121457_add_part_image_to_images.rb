class AddPartImageToImages < ActiveRecord::Migration
  def change
    add_column :images, :image, :blob

  end
end
