Given /^there is a price of (.+)$/ do |price|
  @meh = BigDecimal.new(price)
end

And /^I know the cost is (.+)$/ do |cost|
  @margin = @meh.margin(cost)
end

Then /^I should get the margin (.+)$/ do |margin|
  assert_equal(BigDecimal.new(margin).to_s, @margin.to_s)
end
