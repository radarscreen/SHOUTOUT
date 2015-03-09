require "rails_helper"

feature "Visitor logs into the app" do
  scenario "success" do
    visit root_path
    #exercise
    fill_in "username", with: @username = "test1"
    fill_in "password", with: @password = "123456"
    click_button "Log in"

    visit(shouts_index_path)
  end
end