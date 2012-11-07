require 'test_helper'

class BigDecimalTest < Test::Unit::TestCase
  
  setup do
    @bd = BigDecimal.new('100.3799')
  end
  
  context "to_s" do
    
    should "return a string rounded to 2 decimal places" do
      assert_equal(@bd.round(2).to_s, @bd.to_s)
    end
    
    should "still round to two decimal places if 0" do
      assert_equal "0.00", BigDecimal.new("0").to_s
    end
    
    should "still round to two decimal places if 1.20" do
      assert_equal "1.20", BigDecimal.new("1.2").to_s
    end
  end
end
