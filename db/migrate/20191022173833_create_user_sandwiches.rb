class CreateUserSandwiches < ActiveRecord::Migration[6.0]
  def change
    create_table :user_sandwiches do |t|
      t.integer :user_id
      t.integer :sandwich_id

      t.timestamps
    end
  end
end
