require "rails_helper"
RSpec.describe "when visiting the contestants index page" do
  before :each do
    @contestant1 = Contestant.create!(name: "Madeleine" , entries:7 )
    @contestant2 = Contestant.create!(name: "Henri", entries:3 )
    @contestant3 = Contestant.create!(name: "Curtis", entries:8 )
    @contestant4 = Contestant.create!(name: "Suzie", entries:11 )
    @contestant5 = Contestant.create!(name: "Richard", entries:6 )
  end
  it "should display each contestants name and number of entries" do
    visit "/"

    click_on "View all Contestants"

    expect(current_path).to eq("/contestants")

    expect(page).to have_content(@contestant1.name)
    expect(page).to have_content(@contestant2.name)
    expect(page).to have_content(@contestant3.name)
    expect(page).to have_content(@contestant4.name)
    expect(page).to have_content(@contestant5.name)
  end
  it "should display total entries & contestants" do
    visit "/contestants"

    expect(page).to have_content(5)
    expect(page).to have_content(35)
  end
end
