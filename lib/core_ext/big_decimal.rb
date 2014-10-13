require 'corrency/corrency_mixin'

class BigDecimal
  include CorrencyMixin

  def to_s(s = "%.2f")
    sprintf(s, self)
  end
end
