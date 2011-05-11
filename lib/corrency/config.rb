module Corrency
  
  DEFAULT_VAT_RATE = 20.00
  
  class Config
    
    class << self
      attr_writer :vat_rate
      
      def vat_rate
        @vat_rate || Corrency::DEFAULT_VAT_RATE
      end
    end
  end
end