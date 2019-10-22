class CreateSandwichIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :sandwich_ingredients do |t|
      t.reference :sandwich, null: false, foreign_key: true
      t.reference :ingredient,null: false, foreign_key: true

      t.timestamps
    end
  end
end
