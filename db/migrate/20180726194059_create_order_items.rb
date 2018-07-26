class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.string :customer
      t.decimal :cost
      t.references :food_item, foreign_key: true

      t.timestamps
    end
  end
end
