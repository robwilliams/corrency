require 'test_helper'

class ProductPriceTest < ActiveSupport::IntegrationCase

  setup do
    Product.create(:price => 10.00)
    visit "/products/1"
  end

  test "should display correct price on GET to products#show" do
    assert_match '<span class="price">10.00</span>', page.body
  end

  # this also prove initializer works because vat_rate has been changed to 27.00 
  test "should display correct price.inc_vat on GET to products#show" do
    assert_match '<span class="price_inc_vat">12.70</span>', page.body
  end
end
