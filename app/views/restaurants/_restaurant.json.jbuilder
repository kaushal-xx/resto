json.extract! restaurant, :id, :user_id, :name, :brand_logo_url, :description, :owner_name, :owner_contact_no, :owner_address, :status, :creator_id, :modifier_id, :create_time, :modified_time, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
