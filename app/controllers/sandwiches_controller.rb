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
        # byebug
        @sandwich = Sandwich.create(sandwich_params)
        @cookie = Cookie.find(params[:sandwich][:cookies])
        @topping = Topping.find(params[:sandwich][:toppings])
        @ice_cream = IceCream.find(params[:sandwich][:ice_creams])
        @sandwich_ingredient = SandwichIngredient.create(sandwich_ingredient_params)
        # (sandwich_id: @sandwich.id, cookie_id: @cookie.id, ice_cream_id: @ice_cream.id, topping_id: @topping.id,)
       
        if @sandwich.save
            redirect_to sandwich_path(@sandwich)
        else
            redirect_to new_sandwiches_path
        end
        
    end # end of create

    private

    def sandwich_params
        params.require(:sandwich).permit(:name, :price)
    end

    def sandwich_ingredient_params
        params.require(:sandwich).permit(:cookie_id, :topping_id, :ice_cream_id )
    end

end
