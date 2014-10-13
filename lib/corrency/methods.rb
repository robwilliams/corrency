require 'bigdecimal'
require 'bigdecimal/util'

module Corrency
  module Methods
    def inc_vat
      (self.to_d * vat_rate)
    end

    def ex_vat
      (self.to_d / vat_rate)
    end

    def next_ninety_nine
      self.ceil - BigDecimal.new("0.01")
    end

    def add_margin(margin)
      ((self.to_d / (100 - margin.to_d)) * 100).round(2)
    end

    def margin(cost)
      self_d = self.to_d
      ((self_d - BigDecimal.new(cost)) / self_d) * 100
    end

    protected
      def vat_rate
        1 + (Corrency::Config.vat_rate.to_d / 100)
      end
  end
end
