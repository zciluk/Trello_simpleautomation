Feature: As a user I would like to log in my account with my e-mail and password.
#Available fields on login screen: id:"user" input, id:"password" input, id:"login" button
@ID-001 @login
Scenario: Verify initial login screen

Given I am on Trello "login" page
Then I should see empty "user" field with placeholder ""
And I should see empty "password" field with placeholder "e.g., ••••••••••••"
And I should see "login" button

