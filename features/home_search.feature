Feature: Home Search

Scenario: Display matching homes for sale
   When I search for homes in Richmond, VIC 3121
   And the property type of Apartment
   And a maximum price of 500,000
   Then the results should display matching homes in the correct state and suburb
