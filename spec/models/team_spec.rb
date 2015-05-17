require 'rails_helper'

RSpec.describe Team, type: :model do
  it "is valid" do
    t = Team.new(name: "X-men")
    expect(t).to be_valid
  end

  it "is invalid" do
    expect(Team.new).not_to be_valid
  end
end
