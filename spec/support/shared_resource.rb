require 'rails_helper'
RSpec.shared_examples "CRUD_methods" do
  it "GET index" do
    expect(resource_class).to receive(:all).and_return([])
    get :index
    expect(response).to render_template(:index)
  end

  it "GET new" do
    get :new
    expect(response).to render_template(:new)
  end

  describe "POST create" do
    it "success" do
      resource = double(resource_class.to_s, save: true)
      expect(resource_class).to receive(:new).and_return(resource)
      post :create, post_params
      expect(response).to redirect_to(index_url)
    end

    it "error" do
      resource = double(resource_class.to_s, save: false)
      expect(resource_class).to receive(:new).and_return(resource)
      post :create, post_params
      expect(response).to render_template(:new)
    end
  end

  describe "PUT update" do
    it "success" do
      resource = double(resource_class.to_s, update: true)
      puts resource_class
      expect(resource_class).to receive(:find).with(resource_id).and_return(resource)
      put :update, update_params
      expect(response).to redirect_to(index_url)
    end

    it "error" do
      resource = double(resource_class.to_s, update: false)
      expect(resource_class).to receive(:find).with(resource_id).and_return(resource)
      put :update, update_params
      expect(response).to render_template(:edit)
    end
  end

    it "DELETE destroy" do
      resource = double(resource_class.to_s, destroy: nil)
      expect(resource_class).to receive(:find).with(resource_id).and_return(resource)
      delete :destroy, id: resource_id
      expect(response).to redirect_to(index_url)
    end
end



