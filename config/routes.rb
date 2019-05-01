Rails.application.routes.draw do

  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
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
