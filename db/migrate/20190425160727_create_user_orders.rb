class CreateUserOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :user_orders do |t|
      t.string :order_number
      t.integer :table_booking_id
      t.integer :user_id
      t.decimal :order_amount, precision: 8, scale: 2, null: true
      t.date :order_date
    end
  end
end
