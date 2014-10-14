require 'corrency/methods'

class BigDecimal
  include Corrency::Methods

  old_to_s = instance_method(:to_s)
  define_method(:to_s) do |s = nil|
    if s.nil?
      sprintf('%.2f', self)
    else
      old_to_s.bind(self).call(s)
    end
  end
end
