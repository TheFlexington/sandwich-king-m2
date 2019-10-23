class SandwichIngredient < ApplicationRecord
    belongs_to :sandwich
    belongs_to :ingredient
    belongs_to :topping
    belongs_to :ice_cream
end
