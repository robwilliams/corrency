Then /^I should have a price nearest ninety nine of (.+)$/ do |price|
  @price = @meh.next_ninety_nine
  assert_equal(BigDecimal.new(price).to_s, @price.to_s)
end
