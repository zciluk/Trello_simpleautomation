Feature: As a new user, I would like to register my account
#Available fields on login screen: id:"name" input, id:"email" input, id:"password" input, id:"signup" input
@ID-004 @signup
Scenario: User should be able to register using valid data

Given I am on Trello "signup" page
When I fill in "name" field with "[unique-name]"
And I fill in "email" field with "[unique-email]"
And I fill in "password" field with "somepassword"
And I click on "signup" button
Then I should be redirected to welcome page

