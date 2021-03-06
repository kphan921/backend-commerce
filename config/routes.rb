Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :auth, only: [:create]

  resources :orders
  resources :reviews
  resources :items
  
  post '/signup', to: 'users#create'
end
