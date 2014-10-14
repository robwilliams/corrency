require 'test_helper'

describe BigDecimal do

  describe "#to_s" do

    it "should return a string rounded to 2 decimal places" do
      @bd = BigDecimal.new('100.3799')
      assert_equal("100.38", BigDecimal.new("100.38000123").to_s)
    end

    it "should round to two decimal places if 0" do
      assert_equal "0.00", BigDecimal.new("0").to_s
    end

    it "should round to two decimal places if 1.20" do
      assert_equal "1.20", BigDecimal.new("1.2").to_s
    end

    it "should accept a format override" do
      assert_equal '+314 15.926 53', BigDecimal.new('31415.92653').to_s('+3F')
    end
  end
end
