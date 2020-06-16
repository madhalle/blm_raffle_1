require 'rails_helper'
RSpec.describe Contestant, type: :model do
  # describe "relationships" do
  #   it {should have_many(:entries)}
  # end
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:entries) }
  end
end
