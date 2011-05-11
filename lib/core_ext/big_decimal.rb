require 'bigdecimal'
require 'bigdecimal/util'

class BigDecimal

  def inc_vat
    (self * ((Corrency::Config.vat_rate.to_f / 100) + 1)).to_d
  end
  
  old_to_s = instance_method :to_s

  define_method :to_s do |*param|
    "%.2f" % self.round(2)
  end
end