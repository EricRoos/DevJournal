require "rails_helper"

RSpec.describe FeaturesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/projects/1/features").to route_to("features#index", project_id: "1")
    end

    it "routes to #new" do
      expect(get: "/projects/1/features/new").to route_to("features#new", project_id: "1")
    end

    it "routes to #show" do
      expect(get: "/projects/1/features/1").to route_to("features#show", project_id: "1", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/projects/1/features/1/edit").to route_to("features#edit", project_id: "1", id: "1")
    end


    it "routes to #create" do
      expect(post: "/projects/1/features").to route_to("features#create", project_id: "1")
    end

    it "routes to #update via PUT" do
      expect(put: "/projects/1/features/1").to route_to("features#update", project_id: "1", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/projects/1/features/1").to route_to("features#update", project_id: "1", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/projects/1/features/1").to route_to("features#destroy", project_id: "1", id: "1")
    end
  end
end
