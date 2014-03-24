require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'
Capybara.app = App

feature "Managing Items" do
  scenario "User can manage items" do
    visit ('/')
    expect(page).to have_title ("My Badass Food")
    expect(page).to have_link ("add new item")
  end
end