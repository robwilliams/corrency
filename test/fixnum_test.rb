require 'test_helper'

describe Fixnum do

  describe "#inc_vate" do

    it "should return the same as a BigDecimal does" do
      [0, 3, 1000].each do |num|
        assert_equal(num.inc_vat, BigDecimal.new(num).inc_vat)
      end
    end
  end
end
