Feature: Profit Margin Calculations
  In order to make the correct amount of profit on an item
  As a user of the Corrency Library
  I should be able to work out profit margins correctly.

  Scenario Outline: Adding profit margin to costs
    Given there is a cost of <cost>
    And I apply a margin of <margin>
    Then I should have a value of <price>
     
    Examples:
      | cost    | margin | price  |
      | 61.33   | 28%    | 85.18  |
      | 90.00   | 10%    | 100.00 |
      | 100.00  | 20%    | 125.00 |
      | 3.43    | 12.3%  | 3.91   |

