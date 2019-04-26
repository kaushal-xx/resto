class CreateOrderBillings < ActiveRecord::Migration[5.1]
  def change
    create_table :order_billings do |t|
      t.integer :order_billingscol
      t.decimal :billing_amount
      t.string :billing_method
      t.string :billing_status
      t.decimal :discount
      t.decimal :tax
      t.text :note
    end
  end
end
