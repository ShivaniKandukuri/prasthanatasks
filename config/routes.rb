Rails.application.routes.draw do
  resource :distributors
  resources :publishers
  resources :novels
#  resources :images
#  resources :photos
  get "voter",to: "voter#index"
  get "/",to: "leaders#index"
  get '/politicians/:id', to: 'politicians#show', as: 'politician'
  get 'consumer' ,to:'procuts#show'
#  resources :leaders
 # resources :voters, :politicians
  #resource :professors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :malls, only: [:show,:index]
  root to: 'professors#index'
  #namespace :minister do
  #  resource :parties
 #  end
#  resources :politicians
  #resources :voters

  resources :professors
  resources :ministers do
    get 'preview', on: :member
  end
  resources :parties do
    get 'search', on: :collection
  end
  resources :photos, controller: 'images'
  #resources :distributors, as: 'publishers'


end
