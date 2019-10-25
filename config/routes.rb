Rails.application.routes.draw do

  get 'users/main_menu', to: 'users#main_menu'
  get 'users/welcome', to: 'users#welcome'
  
  
  
  
  resources :cookies, only: [:new, :create]
  resources :ice_creams, only: [:new, :create]
  resources :toppings, only: [:new, :create]
  resources :sandwich_ingredients
  resources :sandwiches
  resources :users
  resources :user_sandwiches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
