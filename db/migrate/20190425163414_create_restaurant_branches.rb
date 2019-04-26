class CreateRestaurantBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurant_branches do |t|
      t.string :name
      t.text :description
      t.text :brand_logo_url
      t.string :phone
      t.string :email
      t.integer :restaurant_id
      t.integer :location_id
      t.string :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
