json.extract! restaurant_menu, :id, :restaurant_id, :dish_name, :dish_type, :description, :dish_price, :status, :image, :created_at, :updated_at
json.url restaurant_menu_url(restaurant_menu, format: :json)
