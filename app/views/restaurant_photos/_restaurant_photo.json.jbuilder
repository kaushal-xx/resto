json.extract! restaurant_photo, :id, :name, :description, :url, :restaurant_id, :photo_type, :status, :creator_id, :modifier_id, :create_time, :modified_time, :created_at, :updated_at
json.url restaurant_photo_url(restaurant_photo, format: :json)
