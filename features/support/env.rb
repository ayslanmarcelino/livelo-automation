# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'report_builder'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.livelo.com.br'
  Capybara.default_max_wait_time = 15
  Capybara.page.driver.browser.manage.window.maximize
end
