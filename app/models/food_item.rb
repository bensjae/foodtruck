class FoodItem < ApplicationRecord
	validates :name, :section, presence: true
	belongs_to :section
    has_many :order_items, dependent: :destroy
end
