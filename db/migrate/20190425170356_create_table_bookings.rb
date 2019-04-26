class CreateTableBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :table_bookings do |t|
      t.string :qr_code
      t.date :booking_date
      t.time :booking_time_from
      t.time :booking_time_to
      t.integer :table_id
      t.integer :booking_by
      t.integer :status
      t.integer :creator_id
      t.integer :modifier_id
      t.datetime :create_time
      t.datetime :modified_time
    end
  end
end
