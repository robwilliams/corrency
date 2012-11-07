Feature: VAT Calculations
  In order to charge customers the correct amount of VAT
  As a user of the Corrency Library
  I should be able to work out VAT correctly.

  Scenario Outline: Adding VAT to price
    Given there is a value of <price>
    And I configure the VAT rate to <vat_rate>
    Then I should have a total inc vat of <total>
     
    Examples:
      | price   | vat_rate | total  |
      | 61.33   | 20%      | 73.60  |
      | 90.00   | 17.5%    | 105.75 |
      | 100.00  | 20%      | 120.00 |
      | 3.43    | 20%      | 4.12   |

  Scenario Outline: Removing VAT from price
    Given there is a value of <price>
    And I configure the VAT rate to <vat_rate>
    Then I should have a total ex vat of <total>
     
    Examples:
      | price   | vat_rate | total  |
      | 73.60   | 20%      | 61.33  | 
      | 105.75  | 17.5%    | 90.00  | 
      | 120.00  | 20%      | 100.00 | 
      | 4.12    | 20%      | 3.43   | 

