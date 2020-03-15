Rails.application.routes.draw do
  root to: "flights#index"
  resources :pnrs
  resources :bookings
  resources :flights
  resources :seat_maps
  resources :flight_configs
  get 'user/index'
  get 'user/show'
  get 'user/delete'
  devise_for :users
end
