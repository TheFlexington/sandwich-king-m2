class AddBiscuitIdToSandwichIngredientsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :sandwich_ingredients, :biscuit_id, :integer
  end
end
