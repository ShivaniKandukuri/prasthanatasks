Rails.application.routes.draw do
  resources :purchases
  resources :invoices
  resources :add_restaurant_reference_to_ratings
  resources :ratings
  resources :restaurants
  #devise_for :consumers
  #devise_for :offices
  resources :professors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :malls, only: [:show,:index]
  resources :accounts
  resources :authors
  resources :texts
  resources :offices
  resources :patients
end
