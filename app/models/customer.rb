class Customer < ApplicationRecord
  validates :name, :phone_num, :order_item_id, presence: true
  validates :phone_num, :numericality => {:only_integer => true}
  belongs_to :order_item
end
