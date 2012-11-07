# Corrency (the spelling mistake is intentional)

Useful core extensions for ecommerce applications (especially in the uk).

To set vat rate of corrency set ```Corrency::Config.vat_rate = 20.00``` 
in config/initializers/corrency.rb (Defaults to 20.00)

# Usage
```ruby
BigDecimal.new('10.00').inc_vat => BigDecimal.new("12.00")
BigDecimal.new('12.00').ex_vat => BigDecimal.new("10.00")
```

# Copyright
Copyright (c) 2012 Robert Williams. See MIT-LICENSE for further details.
