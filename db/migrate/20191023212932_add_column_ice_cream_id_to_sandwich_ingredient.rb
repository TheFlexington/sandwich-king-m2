class AddColumnIceCreamIdToSandwichIngredient < ActiveRecord::Migration[6.0]
  def change
    add_column :sandwich_ingredients, :ice_cream_id, :integer

  end
end
