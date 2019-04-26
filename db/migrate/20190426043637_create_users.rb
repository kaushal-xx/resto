class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :uuid
      t.string :email
      t.string :phone
      t.string :name
      t.integer :status
      t.integer :user_type
      t.text :photo
      t.string :gender
      t.text :fcm_token
      t.string :tc_accept
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
