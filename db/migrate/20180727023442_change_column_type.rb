class ChangeColumnType < ActiveRecord::Migration[5.2]
  def change
  	change_column :food_items, :price, :decimal, :precision => 10, :scale => 2
  end
end
