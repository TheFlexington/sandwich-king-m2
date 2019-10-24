class SandwichIngredient < ApplicationRecord
    belongs_to :sandwich
    belongs_to :topping
    belongs_to :ice_cream
    belongs_to :biscuit
    belongs_to :cookie
end
