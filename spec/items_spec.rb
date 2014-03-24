require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'
Capybara.app = App


feature "Managing Items" do
  scenario "User can manage items" do
    visit ('/')
  end
end