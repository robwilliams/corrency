Given /^there is a value of (.+)$/ do |value|
  @meh = BigDecimal.new(value)
end

Given /^I configure the VAT rate to (.+)%$/ do |vat_rate|
  Corrency::Config.vat_rate = vat_rate
end

Then /^I should have a total inc vat of (.+)$/ do |price|
  @price_inc_vat = @meh.inc_vat
  assert_equal(BigDecimal.new(price).to_s, @price_inc_vat.to_s)
end

Then /^I should have a total ex vat of (.+)$/ do |price|
  @price_ex_vat = @meh.ex_vat
  assert_equal(BigDecimal.new(price).to_s, @price_ex_vat.to_s)
end
