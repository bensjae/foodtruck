class Section < ApplicationRecord
	validates :name, presence: true, uniqueness: {case_sensitive: false}
	has_many :food_items, dependent: :destroy
end
