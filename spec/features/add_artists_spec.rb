require 'rails_helper'
RSpec.feature "add artists" do
  scenario "allow an admin to add an artist" do
    
    artist = create(:artist)
    visit artist_path(artist)

    expect(page).to have_content("Whitney")
    expect(page).to have_content("Houston")
  end

  # Syntax without factories, for future reference
  # scenario "allow an admin to add an artist" do
  #   visit new_artist_path
  #   fill_in "First Name", with: "Whitney"
  #   fill_in "Last Name", with: "Houston"
  #   click_on("Add New Artist")
  #   expect(page).to have_content("Whitney")
  #   expect(page).to have_content("Houston")
  # end
end