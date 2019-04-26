class CreateRestaurantMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_musics do |t|
      t.string :name
      t.text :description
      t.integer :restaurant_id
      t.string :music_type
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
