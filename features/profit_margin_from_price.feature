Feature: Calculate Profit Margin From Price
  In order to make the correct amount of profit on an item
  As a user of the Corrency Library
  I should be able to work out how much margin has been applied.

  Scenario Outline: Profit Margin from Price
    Given there is a price of <price>
    And I know the cost is <cost>
    Then I should get the margin <margin>
     
    Examples:
      | cost    | margin | price  |
      | 61.33   | 28%    | 85.18  |
      | 90.00   | 10%    | 100.00 |
      | 100.00  | 20%    | 125.00 |
      | 3.43    | 12.28%  | 3.91   |

