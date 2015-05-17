require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) { Task.new(name: "task #1", description: "description", team: Team.new) }

  it "is valid" do
    expect(task).to be_valid
  end

  it "name is too long" do
    task.name = "*" * 256
    expect(task).not_to be_valid
  end
end
