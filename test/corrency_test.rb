require 'test_helper'

class CorrencyTest < ActiveSupport::TestCase

  setup do
    @old_vat_rate = Corrency::Config.vat_rate
  end

  context "Config" do

    should "have a default vat_rate" do
      assert_equal Corrency::Config.vat_rate.class, Float
    end
    
    should "set vat_rate" do
      Corrency::Config.vat_rate = 17.50
      assert_equal 17.50, Corrency::Config.vat_rate
    end
  end
  
  teardown do
    # Makes sure all other tests that expect base tax still pass
    Corrency::Config.vat_rate = @old_vat_rate
  end
end
