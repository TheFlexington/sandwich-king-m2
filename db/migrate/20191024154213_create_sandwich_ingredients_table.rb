class CreateSandwichIngredientsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :sandwich_ingredients do |t|
      t.integer :sandwich_id
      t.integer :cookie_id
      t.integer :ice_cream_id
      t.integer :topping_id

      t.timestamps

    end
  end
end
