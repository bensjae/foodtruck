class FoodItem < ApplicationRecord
	validates :name, :price, :section, presence: true
	belongs_to :section

	def self.search(search)
		where("section_id LIKE ?", "%#{search}")
	end
end
