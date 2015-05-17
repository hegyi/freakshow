require 'rails_helper'

RSpec.describe Mutant, type: :model do
  let(:mutant) { Mutant.new(name: "John", team: Team.new) }

  it "is valid" do
    expect(mutant).to be_valid
  end

  it "name is required" do
    mutant.name = nil
    expect(mutant).not_to be_valid
  end

  it "team is required" do
    mutant.team = nil
    expect(mutant).not_to be_valid
  end
end
