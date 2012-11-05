require "spec_helper"

describe CorrespondentsController do
  describe "routing" do

    it "routes to #index" do
      get("/correspondents").should route_to("correspondents#index")
    end

    it "routes to #new" do
      get("/correspondents/new").should route_to("correspondents#new")
    end

    it "routes to #show" do
      get("/correspondents/1").should route_to("correspondents#show", :id => "1")
    end

    it "routes to #edit" do
      get("/correspondents/1/edit").should route_to("correspondents#edit", :id => "1")
    end

    it "routes to #create" do
      post("/correspondents").should route_to("correspondents#create")
    end

    it "routes to #update" do
      put("/correspondents/1").should route_to("correspondents#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/correspondents/1").should route_to("correspondents#destroy", :id => "1")
    end

  end
end
