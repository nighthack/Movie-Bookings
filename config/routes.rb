Rails.application.routes.draw do
  resources :movies
  resources :bookings
  resources :shows
  resources :screens
  resources :theatres
  resources :users
end
