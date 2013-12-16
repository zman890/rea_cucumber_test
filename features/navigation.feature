Feature: Navigation
  Verify that navigation headers link to correct sub-pages

	
  Scenario Outline: Click through navigation links
    Given I am viewing the REA home page
    When I click the <header> link
	Then the <url> page is displayed
	
	Examples:	
	| header | url |
	| buy  | buy |
	| rent | rent |
	| share | share |
	| sold | sold |
	| new homes | new-homes |
	| retire| retire |
	| find agents | find-agent|
	| home ideas |  home-ideas/|
	|blog| blog/|
	|commercial |  www.realcommercial.com.au/for-sale |