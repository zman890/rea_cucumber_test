When(/^I search for homes in Richmond, VIC 3121$/) do 
  visit 'http://www.realestate.com.au/buy'
  page.driver.browser.manage.window.maximize
  fill_in 'where', :with => 'Richmond, VIC 3121'
end

When(/^the property type of Apartment$/) do
  find(:css, 'input#propertyType').click
  find(:css, 'input#ddCb_propertyType_3').set(true)
end

When(/^a maximum price of (.*)$/) do |arg1|
  page.find(:css, 'input#maxPrice').click 
  page.first(:css, '#LMIDD_maxPrice>div.LMIDDMenu>dl>dd.LMIDDNoSection', :text => arg1, :exact => true).click
  find(:css, 'input#searchBtn').click
end

Then(/^the results should display matching homes in the correct state and suburb$/) do
    expected_title_1 = 'Apartments For Sale'
    expected_title_2 = 'between $0 and $500,000'
	expected_title_3 = 'Richmond, VIC 3121'
  actual_title = page.title
  actual_title.should include(expected_title_1)
  actual_title.should include(expected_title_2)
  actual_title.should include(expected_title_3)
  #assert_equal expected_title, actual_title
  #page.should have_selector("title", :text => "Apartments For Sale between $0 and $500,000 in Richmond, VIC 3121 (Page 1) - realestate.com.au")
  #expect(page).to have_title "Apartments For Sale between $0 and $500,000 in Richmond, VIC 3121 (Page 1) - realestate.com.au"
  #expect(first('title').native.text).to eq "Apartments For Sale between $0 and $500,000 in Richmond, VIC 3121 (Page 1) - realestate.com.au"
end

