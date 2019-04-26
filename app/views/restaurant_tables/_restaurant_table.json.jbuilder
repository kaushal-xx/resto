json.extract! restaurant_table, :id, :name, :description, :max_sitting, :restaurant_id, :booking_status, :booking_id, :status, :creator_id, :modifier_id, :create_time, :modified_time, :created_at, :updated_at
json.url restaurant_table_url(restaurant_table, format: :json)
