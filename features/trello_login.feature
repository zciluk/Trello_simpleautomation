Feature: As a user I would like to log in my account with my e-mail and password.
#Available fields on login screen: id:"user" input, id:"password" input, id:"login" input
@ID-001 @login
Scenario: User should see initial login screen empty

Given I am on Trello "login" page
Then I should see empty "user" field with placeholder ""
And I should see field "user" is focused
And I should see empty "password" field with placeholder "e.g., ••••••••••••"
And I should see "login" button

