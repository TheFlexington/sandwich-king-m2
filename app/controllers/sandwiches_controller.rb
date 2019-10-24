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
        @sandwich = Sandwich.create(name: params[:name], price: params[:price])
        @cookie = Cookie.find(id: params[:cookies])
        @topping = Topping.find(id: params[:toppings])
        @ice_cream = IceCream.find(id: params[:ice_creams])
        @sandwich_ingredient = SandwichIngredient.create(sandwich_id: @sandwich.id, cookie_id: @cookie.id, ice_cream: @ice_cream.id, topping_id: @topping.id,)
       
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
        params.require(:sandwich).permit(:name, :price, :cookies, :ice_creams, :toppings )
    end

    # def sandwich_ingredient_params
    #     params.require(:sandwich).permit(:sandwich_id, )
    # end

end
