 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/edges", type: :request do
  # Edge. As you add validations to Edge, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Edge.create! valid_attributes
      get edges_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      edge = Edge.create! valid_attributes
      get edge_url(edge)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_edge_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      edge = Edge.create! valid_attributes
      get edit_edge_url(edge)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Edge" do
        expect {
          post edges_url, params: { edge: valid_attributes }
        }.to change(Edge, :count).by(1)
      end

      it "redirects to the created edge" do
        post edges_url, params: { edge: valid_attributes }
        expect(response).to redirect_to(edge_url(Edge.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Edge" do
        expect {
          post edges_url, params: { edge: invalid_attributes }
        }.to change(Edge, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post edges_url, params: { edge: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested edge" do
        edge = Edge.create! valid_attributes
        patch edge_url(edge), params: { edge: new_attributes }
        edge.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the edge" do
        edge = Edge.create! valid_attributes
        patch edge_url(edge), params: { edge: new_attributes }
        edge.reload
        expect(response).to redirect_to(edge_url(edge))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        edge = Edge.create! valid_attributes
        patch edge_url(edge), params: { edge: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested edge" do
      edge = Edge.create! valid_attributes
      expect {
        delete edge_url(edge)
      }.to change(Edge, :count).by(-1)
    end

    it "redirects to the edges list" do
      edge = Edge.create! valid_attributes
      delete edge_url(edge)
      expect(response).to redirect_to(edges_url)
    end
  end
end
