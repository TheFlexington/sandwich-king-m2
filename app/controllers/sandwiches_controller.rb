class SandwichesController < ApplicationController

    def index
        @sandwiches = Sandwich.all
    end

    def show
        @sandwich = Sandwich.find(params[:id])
    end

    def new 
        @cookies = Cookie.all
        @toppings = Topping.all
        @ice_creams = IceCream.all
        @sandwich = Sandwich.new
    end

    def create
        byebug
        #stopped here, need to get user working 10/13, 7:30pm
        @sandwich = Sandwich.create(sandwich_params)
        if @sandwich.save
            redirect_to sandwich_path(@sandwich)
        else
            redirect_to new_sandwiches_path
        end
        
        
        # @sandwich = Sandwich.create(name: )
        # ingredient_ids = params[:ingredients] 
        # ingredient_ids.each do |id|
        #  @sandwich.sandwich_ingredients.create(ingredient_id: id)
    end # end of create

    private

    def sandwich_params
        params.require(:sandwich).permit(:name, :cookie_id, :topping_id, :ice_cream_id)
    end

end
