class Customer < ApplicationRecord
  belongs_to :order_item
end
