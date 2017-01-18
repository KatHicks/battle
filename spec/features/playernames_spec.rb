require 'spec_helper'

RSpec.feature "players start a fight by entering their names and seeing them", :type => :feature do

  scenario "user enters name and sees it appear on screen" do
    visit("/")

    fill_in "Player 1", with: "Kat"
    fill_in "Player 2", with: "Bob"
    click_button "Submit"

    expect(page).to have_text("Kat vs. Bob")
  end

end
