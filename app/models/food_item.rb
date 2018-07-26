class FoodItem < ApplicationRecord
	validates :name, :price, :Calories, :section, presence: true
    validates :price, :numericality => {:only_decimal => true}
    validates :Calories, :numericality => {:only_integer => true}
	belongs_to :section
    has_many :order_items, dependent: :destroy
  
end
