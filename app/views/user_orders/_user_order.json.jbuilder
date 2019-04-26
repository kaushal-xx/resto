json.extract! user_order, :id, :order_number, :table_booking_id, :user_id, :order_amount, :order_date, :created_at, :updated_at
json.url user_order_url(user_order, format: :json)
