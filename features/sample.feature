Feature: Google Search
As an User
I want to test google search page
So that I can have results

@15A
Scenario: Do a google Search
Given I am on GoogleHomePage
When I search for avenue code
Then I can see results