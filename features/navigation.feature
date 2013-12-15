Feature: Navigation
  Verify that navigation headers link to correct sub-pages

	
  Scenario Outline: Click through navigation links
    Given I am viewing the REA home page
    When I click the <header> link
	Then the <url> page is displayed
	
	Examples:	
	| header | link |  url |
	| buy  | li.buy  | buy |
	| rent | li.rent | rent |
	| share | li.share | share |
	| sold | li.sold | sold |
	| new homes | li.new_homes | new_homes/new-house+land |
	| retire| li.retire | retire |
	| find agents | li.agent| find-agent|
	| home ideas | li.home_ideas| home-ideas/|
	|blog| li.blog|blog/|
	|commercial | li.commercial | www.realcommercial.com.au/for-sale |