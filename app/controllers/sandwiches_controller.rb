class SandwichesController < ApplicationController

    def index
        @sandwiches = Sandwich.all
    end

    def show
        @sandwich = Sandwich.find(params[:id])
    end

    def new 
        @biscuits = Biscuit.all
        @toppings = Topping.all
        @ice_creams = IceCream.all
        @sandwich = Sandwich.new
    end

    def create
        #stopped here, need to get user working 10/13, 7:30pm
        @sandwich = Sandwich.create(sandwich_params)

        redirect_to @sandwich
        # @sandwich = Sandwich.create(name: )


        # ingredient_ids = params[:ingredients] 
        # ingredient_ids.each do |id|
        #  @sandwich.sandwich_ingredients.create(ingredient_id: id)
        
    end

    private

    def sandwich_params
        params.require(:user).permit(:name, :biscuit_id, :topping_id, :ice_cream_id,)
    end

end
