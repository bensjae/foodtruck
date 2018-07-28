class RemoveCustomerFromOrderItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :customer, :string
  end
end
