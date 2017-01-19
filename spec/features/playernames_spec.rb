require 'spec_helper'

feature "players start a fight by entering their names and seeing them", :type => :feature do

  scenario "user enters name and sees it appear on screen" do
    sign_in_and_play
    expect(page).to have_content("Kat vs. Bob")
  end

end

feature "players can see each other's hit points" do

  scenario "hit points are visible" do
    sign_in_and_play
    expect(page).to have_selector("//p", id: "hit_points_id")
  end

  scenario "player one can see the phrase 'HP'" do
    # same test as above but with alternative syntax
    sign_in_and_play
    within("div#player_two_id") { expect(page).to have_content("HP") }
  end

end

feature "players can attack each other and get a confirmation" do

  scenario "attack button is available" do
    sign_in_and_play
    expect(page).to have_selector("//input", id: "attack_button_id")
  end

  scenario "player gets confirmation after attack" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Successful attack!")
  end

end

feature "when player 1 attacks, player 2 should lose 10 hit points" do

  scenario "both players should start with 60 hit points" do
    sign_in_and_play
    within("div#player_two_id") { expect(page).to have_content("60") }
  end

  scenario "player 2 loses 10 hit points after attack" do
    sign_in_and_play
    click_button "Attack"
    visit '/play'
    within("div#player_two_id") { expect(page).to have_content("50") }
  end

end
