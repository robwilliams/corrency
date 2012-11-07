Feature: Profit Margin Calculations
  In order to correctly calculate profit margins.
  I should be able to work out profit margins correctly.

  Scenario: Adding profit margin to costs
    Given I have these values
      | cost    | margin |
      | 61.33   | 28%    |
      | 90.00   | 10%    |
      | 100.00  | 20%    |
      | 3.43    | 12.3%  |
    When the margin is applied to the cost
    Then I should have the following prices
      | price   |
      | 85.18   |
      | 100.00  |
      | 125.00  |
      | 3.91    |

