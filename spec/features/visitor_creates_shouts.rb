require "rails_helper"

feature "Visitor creates a shout" do
  scenario "successfully" do
    visit new_profile_path
    fill_in "profile_username", with: @username = "tester123"
    fill_in "profile_password", with: @password = nil
    fill_in "profile_email", with: @email = "testing@testerbot.com"
    click_button "Signup"
    expect(page).to have_content("Create New Profile")
  end
end