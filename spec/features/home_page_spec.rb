require "rails_helper"
RSpec.describe "when visiting the home page" do
  it "visitor should be able to enter a new contestant and # of entries" do
    visit "/"

    expect(page).to have_content("Enter new contestant and their number of entries")

    fill_in :name, with: "Madeleine"
    fill_in :entries, with: 4

    click_on "Submit"

    contestant = Contestant.last
    expect(contestant.name).to eq("Madeleine")
  end
end
