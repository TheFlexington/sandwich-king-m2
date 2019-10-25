Rails.application.routes.draw do

  get 'users/main_menu', to: 'users#main_menu'
  root to: 'users#welcome'
  
  get 'login', to: 'sessions#new', as: 'login'
  post 'sessions', to: 'sessions#create', as: 'sessions'
  delete 'sessions', to: 'sessions#destroy'
  
  resources :cookies, only: [:new, :create]
  resources :ice_creams, only: [:new, :create]
  resources :toppings, only: [:new, :create]
  resources :sandwich_ingredients
  resources :sandwiches
  resources :users
  resources :user_sandwiches
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
