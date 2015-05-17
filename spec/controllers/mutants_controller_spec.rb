require 'rails_helper'

RSpec.describe TeamsController, type: :controller do
  let(:resource_class) { Team }
  let(:resource_id) { "15" }
  let(:update_params) { { id: resource_id, team: { name: "X-men" } } }
  let(:post_params) { { team: { name: "X-men" } } }
  let(:index_url) { teams_url }

  it_behaves_like "CRUD_methods"

end

