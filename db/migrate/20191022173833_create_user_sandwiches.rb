class CreateUserSandwiches < ActiveRecord::Migration[6.0]
  def change
    create_table :user_sandwiches do |t|
      t.references :user, null: false, foreign_key: true
      t.references :sandwich, null: false, foreign_key: true

      t.timestamps
    end
  end
end
