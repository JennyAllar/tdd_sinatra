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
    click_link ("add new item")
    fill_in "name", with: ("Waffles")
    click_on ("Add New Item")
    expect(page).to have_content ("Fried Chicken")
    expect(page).to have_content ("Waffles")
    click_on ("item1")
    expect(page).to have_content ("Waffles")
  end
end