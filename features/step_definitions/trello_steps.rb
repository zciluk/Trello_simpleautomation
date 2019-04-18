Given /^I am on Trello "(.*)" page$/ do |page|
    visit("/en/#{page}")
  end
  
    When ("I fill in {string} field with {string}") do |field, value|
        if value=="[unique-name]" 
            fill_in(field,:with => Faker::Name.unique.name)
        elsif value=="[unique-email]" 
            fill_in(field,:with => Faker::Internet.unique.email)
        else 
            fill_in(field,:with => value)
        end
        
    end

    When("I click on {string} button") do |button| 
        click_on button
    end

    Then ("I should see empty {string} field with placeholder {string}") do |field, placeholder|
        expect(find("#"+field).text).to eq ''
        if placeholder!=""
            expect(find("#"+field)['placeholder']).to eq placeholder
          else
            expect(find("#"+field)['placeholder']).to_not eq ""
          end
       
    end

    Then("I should see field {string} is focused") do |field|
        expect(page).to have_selector("#"+field+":focus")
    end

    Then("I should see {string} button") do |field|
        expect(page).to have_css("#"+field)
    end

    Then("I should be redirected to welcome page") do 
        expect(page).to have_selector '.first-board-wrapper'
    end