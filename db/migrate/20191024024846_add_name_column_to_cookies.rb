class AddNameColumnToCookies < ActiveRecord::Migration[6.0]
  def change
    add_column :cookies, :name, :string
  end
end
