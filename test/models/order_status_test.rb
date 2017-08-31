require 'test_helper'

class OrderStatusTest < ActiveSupport::TestCase
  test "Create an order status" do
    order_status = OrderStatus.create(name: 'Pending')
    assert_equal 3, OrderStatus.all.count
  end
end
