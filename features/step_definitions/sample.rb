

Given(/^I am on (.+)$/) do | page | 
  visit page
end

When(/^I search for (.+)$/) do | term | 
	on(GoogleHomePage).do_search term
end

Then(/^I can see results$/) do
  	on(ResultsPage).verify_results?
end