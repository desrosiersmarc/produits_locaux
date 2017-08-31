require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase
  test "order item create, unit price, total price" do
    order_item = OrderItem.create(product_id: 1,
                                  order_id: 1,
                                  quantity: 3)
    assert_equal 5, order_item.unit_price
    assert_equal 15, order_item.total_price
    assert_equal 1, order_item.order.id
    assert_equal 3, OrderItem.count
  end
end
