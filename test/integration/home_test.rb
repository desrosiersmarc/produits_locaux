require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  # setup
  setup do
    @categories = categories(:zero,:one,:two,:three,:four)
    @products = products()
  end

  test "loads home page and first category page correctly" do
  # exercise
  visit "/"
  # verify
  assert_equal 200, page.status_code
  assert page.has_content?("Chez Marie")
  assert page.has_content?("Viande")
  #assert page.has_selector?('.card-product', count: Product.count)

  click_on 'Viande'
#    assert page.has_content?("Tomates")
#    save_and_open_screenshot
  # teardown
  end

end
