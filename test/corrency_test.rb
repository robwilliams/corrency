require 'test_helper'

describe Corrency do

  context "Config" do
    should "have a default vat_rate" do
      assert_equal Corrency::Config.vat_rate.class, Float
    end
    
    should "set vat_rate" do
      Corrency::Config.vat_rate = 17.50
      assert_equal 17.50, Corrency::Config.vat_rate
    end
  end
end
