Rails.application.routes.draw do

  resources :biscuits
  resources :ice_creams
  resources :toppings
  resources :ingredients
  resources :sandwich_ingredients
  
  get 'users/main_menu', to: 'users#main_menu'

  get 'users/welcome', to: 'users#welcome'


  resources :sandwiches
  resources :users
  resources :user_sandwiches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
