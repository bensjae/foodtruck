class OrderItem < ApplicationRecord
  validates :customer, :food_item, presence: true
  has_many :food_items
end
