class FoodItem < ApplicationRecord
	validates :name, :section, presence: true
  belongs_to :section
end
