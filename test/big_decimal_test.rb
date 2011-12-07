require 'test_helper'

class BigDecimalTest < ActiveSupport::TestCase
  
  setup do
    @bd = BigDecimal.new('100.3799')
  end
  
  context "inc_vat" do
    
    should "return the correct total inc vat" do
      assert_equal(BigDecimal.new((@bd * (Corrency::Config.vat_rate.to_f / 100 + 1)).to_s).to_s, @bd.inc_vat.to_s)
    end
    
    should "return a BigDecimal" do
      assert_equal(BigDecimal, @bd.inc_vat.class)
    end
  end
  
  context "ex_vat" do
    
    should "return the correct total inc vat" do
      assert_equal(BigDecimal.new((@bd / (Corrency::Config.vat_rate.to_f / 100 + 1)).to_s), @bd.ex_vat)
    end
    
    should "return a BigDecimal" do
      assert_equal(BigDecimal, @bd.ex_vat.class)
    end
  end
  
  context "next_ninety_nine" do
    
    should "return the next nearest 0.99 decimal" do
      assert_equal(BigDecimal.new("100.99"), @bd.next_ninety_nine)
    end
    
    should "return a BigDecimal" do
      assert_equal(BigDecimal, @bd.next_ninety_nine.class)
    end
  end
  
  context "to_s" do
    
    should "return a string rounded to 2 decimal places" do
      assert_equal(@bd.round(2).to_s, @bd.to_s)
    end
    
    should "return the correct class" do
      assert_equal(String, @bd.to_s.class)
    end
    
    should "still round to two decimal places if 0" do
      assert_equal "0.00", BigDecimal.new("0").to_s
    end
    
    should "still round to two decimal places if 1.20" do
      assert_equal "1.20", BigDecimal.new("1.2").to_s
    end
  end
end