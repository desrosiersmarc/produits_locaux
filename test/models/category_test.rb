require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Category model" do
    category = Category.create(name: "Fish", ancestry: 0)
    assert_equal 1, Category.where(ancestry: 0).count
    assert_equal 6, Category.count
  end
end
