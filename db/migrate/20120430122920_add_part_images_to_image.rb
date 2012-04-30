class AddPartImagesToImage < ActiveRecord::Migration
  def change
    add_column :images, :image, :blob

  end
end
