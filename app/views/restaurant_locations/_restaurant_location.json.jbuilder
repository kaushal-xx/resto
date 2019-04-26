json.extract! restaurant_location, :id, :restaurant_branch_id, :address_line1, :address_line2, :city, :state, :country, :postal_code, :status, :creator_id, :modifier_id, :create_time, :modified_time, :created_at, :updated_at
json.url restaurant_location_url(restaurant_location, format: :json)
