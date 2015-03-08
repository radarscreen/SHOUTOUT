require "rails-helper"

feature "Visitor logs into the app"
  scenario "success"
    #setup
    visit root_path

    #exercise
    fill_in "username", with: "test1"
    fill_in "password", with: "12345"
    click_button "login"