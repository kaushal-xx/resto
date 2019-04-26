class CreateRestaurantFloorPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_floor_plans do |t|
      t.integer :restaurant_id
      t.integer :plan_type
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
