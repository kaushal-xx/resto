class CreateRestaurantPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_photos do |t|
      t.string :name
      t.text :description
      t.text :url
      t.integer :restaurant_id
      t.integer :photo_type
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
