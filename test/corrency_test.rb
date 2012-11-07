require 'test_helper'

describe Corrency do

  it "should have a default vat_rate" do
    Corrency::Config.vat_rate.must_equal Corrency::DEFAULT_VAT_RATE
  end

  it "should set vat_rate" do
    Corrency::Config.vat_rate = 17.50
    Corrency::Config.vat_rate.must_equal 17.50
  end
end
