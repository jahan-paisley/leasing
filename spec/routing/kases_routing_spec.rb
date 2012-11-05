require "spec_helper"

describe KasesController do
  describe "routing" do

    it "routes to #index" do
      get("/kases").should route_to("kases#index")
    end

    it "routes to #new" do
      get("/kases/new").should route_to("kases#new")
    end

    it "routes to #show" do
      get("/kases/1").should route_to("kases#show", :id => "1")
    end

    it "routes to #edit" do
      get("/kases/1/edit").should route_to("kases#edit", :id => "1")
    end

    it "routes to #create" do
      post("/kases").should route_to("kases#create")
    end

    it "routes to #update" do
      put("/kases/1").should route_to("kases#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/kases/1").should route_to("kases#destroy", :id => "1")
    end

  end
end
