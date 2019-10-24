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
        @sandwich = Sandwich.create(sandwich_params)
        @cookie = Cookie.find(params[:sandwich][:cookies])
        @topping = Topping.find(params[:sandwich][:toppings])
        @ice_cream = IceCream.find(params[:sandwich][:ice_creams])
        
        @sandwich_ingredient = SandwichIngredient.create(sandwich_id: @sandwich.id, cookie_id: @cookie.id, ice_cream_id: @ice_cream.id, topping_id: @topping.id)
       
        if @sandwich_ingredient.save
            redirect_to sandwich_path(@sandwich)
        else
            redirect_to new_sandwiches_path
        end
    end 

    def edit
        @sandwich = Sandwich.find(params[:id])
        @cookies = Cookie.all
        @toppings = Topping.all
        @ice_creams = IceCream.all
    end
    
    def update
        byebug
        @sandwich = Sandwich.find(params[:id])
        # byebug
        # @sandwich.update(name: params[:sandwich][:name], price: params[:sandwich][:price], cookies: params[:sandwich][:cookies], toppings: params[:sandwich][:toppings], ice_creams: params[:sandwich][:ice_creams])
        @cookie = Cookie.find(params[:sandwich][:cookies])
        @topping = Topping.find(params[:sandwich][:toppings])
        @ice_cream = IceCream.find(params[:sandwich][:ice_creams])
        
        @sandwich_ingredient = @sandwich.sandwich_ingredient
        @sandwich_ingredient.update(....)
        
        @sandwich_ingredient = SandwichIngredient.update(sandwich_id: @sandwich.id, cookie_id: @cookie.id, ice_cream_id: @ice_cream.id, topping_id: @topping.id)
        @sandwich = Sandwich.update(sandwich_params)
 #  if @sandwich_ingredient.update
        redirect_to sandwich_path(@sandwich)
        # else
        #     redirect_to new_sandwiches_path
        # end
    end



    private

    def sandwich_params
        params.require(:sandwich).permit(:name, :price, :toppings, :ice_creams, :cookies)
    end

    # def sandwich_ingredient_params
    #     params.require(:sandwich).permit(:cookie_id, :topping_id, :ice_cream_id )
    # end

end
