class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :description
      t.string :title
      t.datetime :shooted_at
      t.integer :image_store_id

      t.timestamps
    end
  end
end
