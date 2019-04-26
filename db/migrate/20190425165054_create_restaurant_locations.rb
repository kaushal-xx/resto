class CreateRestaurantLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_locations do |t|
      t.integer :restaurant_branch_id
      t.text :address_line1
      t.text :address_line2
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
