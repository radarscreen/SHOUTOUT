require "rails_helper"

feature "Visitor logs into the app" do
  scenario "successfully" do
    visit root_path
    #exercise
    fill_in "username", with: @username = "test1"
    fill_in "password", with: @password = "123456"
    click_button "Log in"
    expect(page).to have_content("Here's our shouts!")
  end

  scenario "and password fails" do
    visit root_path
    fill_in "username", with: @username = "test1"
    fill_in "password", with: @password = nil
    expect(page).to have_content("Welcome to ShoutOut!")
  end

  scenario "and username fails" do
    visit root_path
    fill_in "username", with: @username = nil
    fill_in "password", with: @password = "123456"
    expect(page).to have_content("Welcome to ShoutOut!")
  end
end