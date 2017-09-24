require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "Product link with Category and Supplier" do
    assert_equal "Pain et Viennoiserie", Product.find(1).category.name
    assert_equal "Boulangerie Firmin", Product.find(0).supplier.name
  end

  test "Product number" do
    assert_equal 3 , Product.all.count
  end

end
