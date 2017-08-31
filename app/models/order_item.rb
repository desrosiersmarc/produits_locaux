class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  def unit_price
    product.price
  end

  def total_price
    unit_price * quantity
  end
end
