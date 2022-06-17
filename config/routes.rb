Rails.application.routes.draw do
  resources :professors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :malls, only: [:show,:index]
  root 'professors#index'
end
