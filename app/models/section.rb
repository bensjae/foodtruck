class Section < ApplicationRecord

	validates :name, presence: true, uniqueness: {case_sensitive: false}
	has_many :food_items

	def self.generate_defaults
		["Breakfast", "Lunch", "Dinner", "HappyHour"].each do |name|
			Section.find_or_create_by(name: name)
		end
	end
end
