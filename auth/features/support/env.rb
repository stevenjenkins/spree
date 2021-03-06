# IMPORTANT: This file is generated by cucumber-rails - edit at your own peril.
# It is recommended to regenerate this file in the future when you upgrade to a 
# newer version of cucumber-rails. Consider adding your own code to a new file 
# instead of editing this one. Cucumber will automatically load all features/**/*.rb
# files.

ENV["RAILS_ENV"] ||= "cucumber"

require File.expand_path("../../../spec/test_app/config/environment", __FILE__)

require 'bundler'
Bundler.setup(:cucumber)

Rails.env = "test"
require 'cucumber/formatter/unicode' # Remove this line if you don't want Cucumber Unicode support
Rails.env = "cucumber"
require 'cucumber/rails/world'
require 'cucumber/web/tableish'
require 'cucumber/rails/rspec'

require 'capybara/rails'
require 'capybara/cucumber'
require 'capybara/session'
# Capybara defaults to XPath selectors rather than Webrat's default of CSS3. In
# order to ease the transition to Capybara we set the default here. If you'd
# prefer to use XPath just remove this line and adjust any selectors in your
# steps to use the XPath syntax.
Capybara.default_selector = :css

# How to clean your database when transactions are turned off. See
# http://github.com/bmabey/database_cleaner for more info.
require 'database_cleaner'
require 'database_cleaner/cucumber'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

DatabaseCleaner.strategy = :transaction
Capybara.save_and_open_page_path = File.join(Rails.root, "tmp")
