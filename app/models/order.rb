class Order < ApplicationRecord
  belongs_to :order_status
  belongs_to :order_status
  has_many :order_items
  has_many :products, through: :order_items


end
