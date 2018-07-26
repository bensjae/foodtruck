class FoodItem < ApplicationRecord
	validates :name, :price, :section, presence: true
	belongs_to :section
  has_many :order_items, dependent: :destroy
  
  def self.search(search)
		where("section_id LIKE ?", "%#{search}")
	end
  
end
