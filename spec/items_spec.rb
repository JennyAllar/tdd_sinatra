require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'
Capybara.app = App

feature "Managing Items" do
  scenario "User can manage items" do
    visit ('/')
    expect(page).to have_title ("My Badass Food")

    click_link ("add new item")
    fill_in "name", with: ("Fried Chicken")
    click_on ("Add New Item")
    save_and_open_page
    expect(page).to have_content ("Fried Chicken")
  end
end