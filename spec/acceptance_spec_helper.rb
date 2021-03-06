ENV['RAILS_ENV'] ||= 'test'
ENV['HEADLESS'] ||= 'true'
require 'rails_helper'
require 'capybara-screenshot/rspec'

Capybara.javascript_driver = ENV['HEADLESS'] == 'false' ? :selenium : :webkit
# include Warden::Test::Helpers

require 'site_prism'

include ActiveSupport::Testing::TimeHelpers
include Helpers::Acceptance::UsersHelpers