json.extract! table_booking, :id, :qr_code, :booking_date, :booking_time_from, :booking_time_to, :table_id, :booking_by, :status, :creator_id, :modifier_id, :create_time, :modified_time, :created_at, :updated_at
json.url table_booking_url(table_booking, format: :json)
