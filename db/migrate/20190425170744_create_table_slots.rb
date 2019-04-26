class CreateTableSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :table_slots do |t|
      t.integer :table_id
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
