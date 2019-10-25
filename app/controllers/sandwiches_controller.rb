class SandwichesController < ApplicationController

    def index
        @sandwiches = Sandwich.all
    end

    def show
        @sandwich = Sandwich.find(params[:id])
        
        @sandwich_ingredients = SandwichIngredient.find_by(:sandwich_id == @sandwich.id)

        @cookie = Cookie.find{|cookie| @sandwich_ingredients.cookie_id == cookie.id}
        @topping = Topping.find{|topping| @sandwich_ingredients.topping_id == topping.id}
        @ice_cream = IceCream.find{|ice| @sandwich_ingredients.ice_cream_id == ice.id}
        
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
        @sandwich = Sandwich.find(params[:id])
        @cookie = Cookie.find(params[:sandwich][:cookies])
        @topping = Topping.find(params[:sandwich][:toppings])
        @ice_cream = IceCream.find(params[:sandwich][:ice_creams])
        
        @sandwich_ingredients = @sandwich.sandwich_ingredient
        @sandwich_ingredients.update(cookie_id: @cookie.id, ice_cream_id: @ice_cream.id, topping_id: @topping.id)
        byebug
        @sandwich.update(sandwich_params)
       
 
        redirect_to sandwich_path(@sandwich)
    end

    def destroy
        @sandwich = Sandwich.find(params[:id])
        @sandwich.destroy
        redirect_to sandwiches_path
    end

    private

    def sandwich_params
        params.require(:sandwich).permit(:name, :price)
    end

end
