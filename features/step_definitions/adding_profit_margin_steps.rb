Given /^there is a cost of (.+)$/ do |cost|
  @meh = BigDecimal.new(cost)
end

Given /^I apply a margin of (.+)%$/ do |margin|
  margin = margin.strip.to_f
  @margin = @meh.add_margin(margin)
end

Then /^I should have a value of (.+)$/ do |price|
  assert_equal(BigDecimal.new(price).to_s, @margin.to_s)
end
