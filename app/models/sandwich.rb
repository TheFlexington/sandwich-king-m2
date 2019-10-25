class Sandwich < ApplicationRecord

    has_many :user_sandwiches
    has_many :users, through: :user_sandwiches

    has_one :sandwich_ingredient
    # accepts_nested_attributes_for :sandwich_ingredients


    has_many :toppings, through: :sandwich_ingredient
    has_many :ice_creams, through: :sandwich_ingredient
    has_many :cookies, through: :sandwich_ingredient

end
