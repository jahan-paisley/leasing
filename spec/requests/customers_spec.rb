require 'spec_helper'

describe "Customer" do
  include Warden::Test::Helpers
  Warden.test_mode!

  before (:each) do
    @user ||= FactoryGirl.create :user
    @customer ||= FactoryGirl.create :customer
    login_as(@user, :scope => :user)
  end

  after :each do
    Warden.test_reset!
  end

  describe "GET /customers" do
    it "Get list of customer" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get customers_path
      response.status.should be(200)
      response.body.should include(@customer.person.firstname)
    end
  end

  describe "GET /customers/id" do
    it "Get a customer" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get "/customers/#{@customer.id}"
      response.status.should be(200)
      response.body.should include(@customer.person.firstname)
    end
  end

  describe "post /customers" do
    pending "post customer form on new"
    pending "post customer form on edit"
  end


end
