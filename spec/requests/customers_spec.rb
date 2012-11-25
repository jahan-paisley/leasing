require 'spec_helper'

describe "Customer" do
  include Warden::Test::Helpers
  Warden.test_mode!

  before (:each) do
    @user ||= FactoryGirl.create :user
    login_as(@user, :scope => :user)
  end

  after :each do
    Warden.test_reset!
  end

  describe "GET /customers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get customers_path
      response.status.should be(200)
    end
  end

end
