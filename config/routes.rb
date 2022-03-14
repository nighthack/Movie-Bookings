Rails.application.routes.draw do
  resources :movies
  resources :bookings
  resources :shows
  resources :screens
  resources :theatres
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
