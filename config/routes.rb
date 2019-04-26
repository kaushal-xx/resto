Rails.application.routes.draw do

  resources :users
  root :to => 'users#index'
  resources :order_billings
  resources :table_videos
  resources :table_slots
  resources :table_ocassions
  resources :table_bookings
  resources :restaurant_table_ratings
  resources :restaurant_tables
  resources :restaurant_photos
  resources :restaurant_musics
  resources :restaurant_menus
  resources :restaurant_locations
  resources :restaurant_floor_plans
  resources :restaurant_branches
  resources :restaurants
  resources :user_orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
