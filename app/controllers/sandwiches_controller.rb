class SandwichesController < ApplicationController

    def index
        @sandwiches = Sandwich.all
    end

    def show
        @sandwich = Sandwich.find(params[:id])
    end

    def new 
        @cookies = Ingredient.all_cookies
        @toppings = Topping.all
        @ice_creams = IceCream.all
        @sandwich = Sandwich.new
    end

    def create
        @sandwich = Sandwich.create(name: "something")
        ingredient_ids = params[:ingredients] 
        ingredient_ids.each do |id|
         @sandwich.sandwich_ingredients.create(ingredient_id: id)
        end
    end

    private

    # def params

    # end

end
