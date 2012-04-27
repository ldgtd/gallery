class AddPartNumberToImages < ActiveRecord::Migration
  def change
    add_column :images, :image_store_id, :integer

  end
end
