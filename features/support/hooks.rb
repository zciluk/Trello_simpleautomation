Capybara.app_host = "https://trello.com"

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
  
  Capybara.javascript_driver = :chrome
  
  Capybara.configure do |config|
    config.default_max_wait_time = 10 # seconds
    config.default_driver        = :selenium
  end
  