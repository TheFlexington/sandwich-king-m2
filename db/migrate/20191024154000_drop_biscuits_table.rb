class DropBiscuitsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :biscuits 
  end
end
