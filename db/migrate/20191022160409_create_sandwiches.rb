class CreateSandwiches < ActiveRecord::Migration[6.0]
  def change
    create_table :sandwiches do |t|
      t.string :name
      t.float :price
      t.integer :list_id
      t.integer :sandwich_ingredients_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
