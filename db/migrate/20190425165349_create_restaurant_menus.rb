class CreateRestaurantMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_menus do |t|
      t.integer :restaurant_id
      t.string :dish_name
      t.string :dish_type
      t.text :description
      t.decimal :dish_price
      t.string :status
      t.text :image
    end
  end
end
