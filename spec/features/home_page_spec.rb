require "rails_helper"
RSpec.describe "when visiting the home page" do
  before :each do
    @contestant1 = Contestant.create!(name: "Madeleine" , entries:7 )
    @contestant2 = Contestant.create!(name: "Henri", entries:3 )
    @contestant3 = Contestant.create!(name: "Curtis", entries:8 )
    @contestant4 = Contestant.create!(name: "Suzie", entries:11 )
    @contestant5 = Contestant.create!(name: "Richard", entries:6 )
    visit "/"
  end
  it "visitor should be able to enter a new contestant and # of entries" do
    click_on "Add Contestant"

    expect(current_path).to eq("/contestants/new")

    expect(page).to have_content("Enter new contestant and their number of entries")

    fill_in :name, with: "Madeleine"
    fill_in :entries, with: 4

    click_on "Submit"

    contestant = Contestant.last
    expect(contestant.name).to eq("Madeleine")
  end

  it "visitor should be able to have a random winner selected" do

    click_on "Generate Random Winner"
    expect(current_path).to eq("/bigwinnerenergy")
    expect(page).to have_content("Your lucky winner is:")

  end
end
