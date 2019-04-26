class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.integer :user_id
      t.string :name
      t.text :brand_logo_url
      t.text :description
      t.string :owner_name
      t.string :owner_contact_no
      t.text :owner_address
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
