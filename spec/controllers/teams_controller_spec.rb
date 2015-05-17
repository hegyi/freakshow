require 'rails_helper'

RSpec.describe MutantsController, type: :controller do
  let(:resource_class) { Mutant }
  let(:resource_id) { "15" }
  let(:update_params) { { id: resource_id, mutant: { name: "Jackson", team_id: "100" } } }
  let(:post_params) { { mutant: { name: "Jackson" } } }
  let(:index_url) { mutants_url }
  before(:each) do
    allow(Mutant).to receive(:includes).and_return(Mutant)
  end

  it_behaves_like "CRUD_methods"

end
