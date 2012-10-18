require "spec_helper"

describe PersonsController do
  describe "routing" do

    it "routes to #index" do
      get("/persons").should route_to("persons#index")
    end

    it "routes to #new" do
      get("/persons/new").should route_to("persons#new")
    end

    it "routes to #show" do
      get("/persons/1").should route_to("persons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/persons/1/edit").should route_to("persons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/persons").should route_to("persons#create")
    end

    it "routes to #update" do
      put("/persons/1").should route_to("persons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/persons/1").should route_to("persons#destroy", :id => "1")
    end

  end
end
