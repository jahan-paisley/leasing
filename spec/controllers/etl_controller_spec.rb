require 'spec_helper'

describe EtlController do

  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "GET 'get_import'" do
    it "returns http success" do
      get 'get_import'
      response.should be_success
    end
  end

  #describe "Post 'post_import'" do
  #  it "returns success on import data" do
  #    @file = fixture_file_upload(Rails.root.join('public/uploads/rahbar_data.xlsx'), 'application/vnd.ms-excel')
  #    post :post_import, :excel_file => @file
  #    Person.all.size.should be > 1
  #    response.should redirect_to etl_import_url
  #  end
  #end

  describe "GET 'get_export'" do
    it "returns http success" do
      get 'get_export'
      response.should be_success
    end
  end

end
