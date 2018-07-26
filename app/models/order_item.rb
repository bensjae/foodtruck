class OrderItem < ApplicationRecord
  belongs_to :food_item

  after_create :make_customer

  def make_customer
  	Customer.create
  end
end
