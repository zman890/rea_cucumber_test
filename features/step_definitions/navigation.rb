Given(/^I am viewing the REA home page$/) do
  visit 'http://www.realestate.com.au/'
end

When(/^I click the (.*) link$/) do | header|
  click_link(header)
end

Then(/^the (.*) page is displayed$/) do |page_url|
  if page_url == "www.realcommercial.com.au/for-sale" 
    new_window = page.driver.browser.window_handles.last 
    page.within_window new_window
     current_url.should == "http://" + page_url
   elsif page_url == "new-homes"
    url_check = current_path.start_with?("/" + page_url)
	url_check.should == true
    #current_path.should =~ /^\/page_url/
   else
    current_path.should == "/" + page_url
  #expected_url = "http://www.realestate.com.au/" + page_url
  #current_url.should == expected_url
  sleep 1
  end
 end