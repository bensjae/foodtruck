class ChangeOrderColumn < ActiveRecord::Migration[5.2]
  def change
  	change_column :order_items, :cost, :decimal, :precision => 10, :scale => 2
  end 
end
