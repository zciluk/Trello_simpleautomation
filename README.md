## Trello simple automation
Simple automated test scripts for Trello login and signup.
Test are covering one scenario for each of two User Stories: 

| User Story |   Scenario 
|-----|-----|
| **As a new user, I would like to register my account**  | ID-004 - User should be able to register using valid data |
| **As a user I would like to log in my account with my e-mail and password**  | ID-001 - User should see initial login screen empty|


Test are written in Ruby using Capybara + Selenium and Cucumber. Additional lib is Faker which is used for generating fake data for registration. 

#### Installation 

1. Make sure Ruby and Bundler are installed on a machine. 
```
$ brew install ruby
```
```
$ gem install bundler
```
2. Clone the repository to your machine. 
3. Run bundler in cloned directory to download dependencies. 
```
$ bundle install
```
#### Running
To run all test, execute command: 
```
$ bundle exec cucumber 
```

To run test for a feature, use tags "signup" or "login". For example this command will only run signup test: 
```
$ bundle exec cucumber -t @signup
```
