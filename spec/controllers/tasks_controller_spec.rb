require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  let(:resource_class) { Task }
  let(:resource_id) { "15" }
  let(:update_params) { { id: resource_id, task: { name: "Do this", team_id: "100" } } }
  let(:post_params) { { task: { name: "Do that" } } }
  let(:index_url) { tasks_path }
  before(:each) do
    allow(Task).to receive(:includes).and_return(Task)
    allow(Task).to receive(:desc).and_return(Task)
  end

  it_behaves_like "CRUD_methods"

end

