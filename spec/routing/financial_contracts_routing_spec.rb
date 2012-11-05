require "spec_helper"

describe FinancialContractsController do
  describe "routing" do

    it "routes to #index" do
      get("/financial_contracts").should route_to("financial_contracts#index")
    end

    it "routes to #new" do
      get("/financial_contracts/new").should route_to("financial_contracts#new")
    end

    it "routes to #show" do
      get("/financial_contracts/1").should route_to("financial_contracts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/financial_contracts/1/edit").should route_to("financial_contracts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/financial_contracts").should route_to("financial_contracts#create")
    end

    it "routes to #update" do
      put("/financial_contracts/1").should route_to("financial_contracts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/financial_contracts/1").should route_to("financial_contracts#destroy", :id => "1")
    end

  end
end
