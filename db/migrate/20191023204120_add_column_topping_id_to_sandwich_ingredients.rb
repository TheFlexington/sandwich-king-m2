class AddColumnToppingIdToSandwichIngredients < ActiveRecord::Migration[6.0]
  def change
  add_column :sandwich_ingredients, :topping_id, :integer

  end
end
