class CreateRestaurantTables < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_tables do |t|
      t.string :name
      t.text :description
      t.integer :max_sitting
      t.integer :restaurant_id
      t.integer :booking_status
      t.integer :booking_id
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
