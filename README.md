# Corrency - Useful Ecommerce Core extensions

[![Build
Status](https://secure.travis-ci.org/robwilliams/corrency.png?branch=master)](https://travis-ci.org/robwilliams/corrency)

# Usage

```ruby
# Configure the VAT rate
Corrency::Config.vat_rate = 20.00

# Add VAT
BigDecimal.new('10.00').inc_vat # 12.00

# Remove VAT
BigDecimal.new('12.00').ex_vat # 10.00

# Roll up to nearest 99p
BigDecimal.new('12.76').next_ninety_nine # 12.99

# Add 10% Margin
BigDecimal.new('90.00').add_margin(10.00) # 100.00

# Calculate Margin
BigDecimal.new('100.00').margin(90.00) # 10.00
```

# Copyright
Copyright (c) 2012 Robert Williams. See MIT-LICENSE for further details.
