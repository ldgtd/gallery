class CreateImageStores < ActiveRecord::Migration
  def change
    create_table :image_stores do |t|
      t.text :name
      t.string :description

      t.timestamps
    end
  end
end
