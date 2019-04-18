Given /^I am on Trello "(.*)" page$/ do |page|
    visit("/en/#{page}")
  end
  
    When /^I fill "([^"]*)" field with "([^"]*)"$/ do |field, value|
        fill_in(field,:with => value)
    end

    Then ("I should see empty {string} field with placeholder {string}") do |field, placeholder|
        find("#"+field).text.should==''
        if placeholder!=""
            find("#"+field)['placeholder'].should==placeholder
          else
            find("#"+field)['placeholder'].should_not==""
          end
       
    end

    Then("I should see {string} button") do |field|
        page.should have_css("#"+field)
    end