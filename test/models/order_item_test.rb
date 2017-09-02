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

  test 'Persisted price' do
    #Add a order_item
    order_item = OrderItem.create(product_id: 1,
                                  order_id: 1,
                                  quantity: 6)
    #Test the price in order item
    assert_equal 5, order_item.unit_price
    #change the price of the product
    Product.find(1).update(price: 10)
    #Test if the price is stil the first price.
    assert_equal 5, order_item.unit_price

  end
end
