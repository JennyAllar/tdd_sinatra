require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'
Capybara.app = App

feature "Managing Items" do
  scenario "User can manage items" do
    visit ('/')
    expect(page).to have_title ("My Badass Food")
  end
end