class AddColumnNameToIceCream < ActiveRecord::Migration[6.0]
  def change
    add_column :ice_creams, :name, :string
  end
end
