require 'test_helper'

class AddProductToCartTest < ActionDispatch::IntegrationTest
  setup do
    @categories = categories(:zero)
    @products = products(:one, :two)
  end

  test "add a product to cart" do
    visit "/"
    click_on 'viande'
    assert page.has_content?('steak')
    #click on add cart
    click_on '2'
    #click on cart logo
    click_on 'shopping-basket'
    #count product in cart
    assert page.has_content?('steak')

  end
end
