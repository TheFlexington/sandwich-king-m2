class CreateBiscuits < ActiveRecord::Migration[6.0]
  def change
    create_table :biscuits do |t|
      t.string :name
      t.timestamps
    end
  end
end
