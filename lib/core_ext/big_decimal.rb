require 'bigdecimal'
require 'bigdecimal/util'

class BigDecimal

  def inc_vat
    (self * vat_rate).to_d
  end
  
  def ex_vat
    (self / vat_rate).to_d
  end
  
  def next_ninety_nine
    self.ceil - BigDecimal.new("0.01")
  end
    
  old_to_s = instance_method :to_s

  define_method :to_s do |*param|
    "%.2f" % self.round(2)
  end
  
  protected
    def vat_rate
      1 + (Corrency::Config.vat_rate.to_f / 100)
    end
end