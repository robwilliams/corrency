# Corrency (the spelling mistake is intentional)

Useful core extensions for ecommerce applications (especially in the uk).

To set vat rate of corrency set ```Corrency::Config.vat_rate = 20.00``` 
in config/initializers/corrency.rb (Defaults to 20.00)

# Usage
```ruby

# Add VAT
BigDecimal.new('10.00').inc_vat # 12.00

# Remove VAT
BigDecimal.new('12.00').ex_vat # 10.00

# Roll up to nearest 99p
BigDecimal.new('12.76').next_ninety_nine # 12.99

# Add 10% Margin
BigDecimal.new('90.00').add_margin(10.00) # 100.00
```

# Copyright
Copyright (c) 2012 Robert Williams. See MIT-LICENSE for further details.
