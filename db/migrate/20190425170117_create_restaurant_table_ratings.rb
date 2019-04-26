class CreateRestaurantTableRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_table_ratings do |t|
      t.integer :from_user_id
      t.text :review
      t.integer :table_id
      t.integer :rating
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
