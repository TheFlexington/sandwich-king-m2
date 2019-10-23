class AddColumnComponentsToIngredients < ActiveRecord::Migration[6.0]
  def change
        add_column :ingredients, :component, :string

  end
end
