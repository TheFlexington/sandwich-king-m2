class DropSandwichIngredientsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :sandwich_ingredients
  end
end
