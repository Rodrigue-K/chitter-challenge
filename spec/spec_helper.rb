ENV['RACK_ENV'] = 'test'

require 'capybara'
require 'capybara/rspec'
require 'database_cleaner'
require 'simplecov'
require 'simplecov-console'

require './app'
require './spec/support/simple_format.rb'
require './spec/support/database_cleaner'

Capybara.app = Chitter
