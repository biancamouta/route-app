require "rails_helper"

RSpec.describe EdgesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/edges").to route_to("edges#index")
    end

    it "routes to #new" do
      expect(get: "/edges/new").to route_to("edges#new")
    end

    it "routes to #show" do
      expect(get: "/edges/1").to route_to("edges#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/edges/1/edit").to route_to("edges#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/edges").to route_to("edges#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/edges/1").to route_to("edges#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/edges/1").to route_to("edges#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/edges/1").to route_to("edges#destroy", id: "1")
    end
  end
end
