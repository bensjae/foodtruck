class OrderItem < ApplicationRecord
    validates :cost, :food_item, presence: true
    validates :cost, :numericality => {:only_decimal => true}
    belongs_to :food_item
    has_many :customers, dependent: :destroy
end
