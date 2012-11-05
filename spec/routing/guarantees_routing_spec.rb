require "spec_helper"

describe GuaranteesController do
  describe "routing" do

    it "routes to #index" do
      get("/guarantees").should route_to("guarantees#index")
    end

    it "routes to #new" do
      get("/guarantees/new").should route_to("guarantees#new")
    end

    it "routes to #show" do
      get("/guarantees/1").should route_to("guarantees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/guarantees/1/edit").should route_to("guarantees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/guarantees").should route_to("guarantees#create")
    end

    it "routes to #update" do
      put("/guarantees/1").should route_to("guarantees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/guarantees/1").should route_to("guarantees#destroy", :id => "1")
    end

  end
end
