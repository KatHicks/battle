require 'spec_helper'

RSpec.feature "players start a fight by entering their names and seeing them", :type => :feature do

  scenario "user enters name and sees it appear on screen" do
    sign_in_and_play
    expect(page).to have_content("Kat vs. Bob")
  end

  scenario "player one can see the hit points of player two" do
    sign_in_and_play
    within("div#player_two") do
      expect(page).to have_content("HP")
    end
  end

  scenario "player one can attack player two and get a confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Successful attack!")
  end

end
