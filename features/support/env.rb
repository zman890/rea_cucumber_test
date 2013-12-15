require 'rubygems'
require 'capybara'
require 'capybara/dsl'


Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.default_selector = :css


World(Capybara::DSL)