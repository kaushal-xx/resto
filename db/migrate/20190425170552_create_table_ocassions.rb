class CreateTableOcassions < ActiveRecord::Migration[5.1]
  def change
    create_table :table_ocassions do |t|
      t.string :name
      t.text :description
      t.integer :table_id
      t.string :ocassion_type
      t.integer :booking_by
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
