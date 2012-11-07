Feature: Nice Rounding
  In order to make prices look nicer to customers
  As a user of the Corrency Library
  I should be able to round a number up to the nearest 99

  Scenario Outline: Rolling Prices up to the next ninety nine
    Given there is a value of <price>
    Then I should have a price nearest ninety nine of <nice_price>
     
    Examples:
      | price   | nice_price |
      | 61.33   | 61.99      |
      | 90.00   | 89.99      |
      | 100.00  | 99.99      |
      | 3.43    | 3.99       |
