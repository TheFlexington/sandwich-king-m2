class CreateCookies < ActiveRecord::Migration[6.0]
  def change
    create_table :cookies do |t|
      t.name

      t.timestamps
    end
  end
end
