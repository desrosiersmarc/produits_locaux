require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "Order subtotal" do
    # For an order with n products, calculate the subtotal
    #Create an order
    order = Order.create(id: 3)
    # Create an order_item
    order_item = OrderItem.create(product_id: 0,
                                  quantity: 5,
                                  order_id: 3)
    # Test the subtotal
    assert_equal 7.5, Order.find(3).subtotal
  end

  test "Order status" do
    #Test the status of an new order
    order = Order.create(id:4)
    assert_equal 1, order.order_status_id
  end
end
