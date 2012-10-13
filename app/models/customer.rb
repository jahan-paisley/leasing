class Customer < ActiveRecord::Base
  attr_accessible :birthdate, :email, :fathername, :firstname, 
                  :gender, :identity_issue_city, :identity_issue_date, 
                  :identity_no, :identity_serial, :lastname, 
                  :marital_status, :national_no, :legal_type

  validates       :birthdate, :email, :fathername, :firstname, 
                  :gender, :identity_issue_city, :identity_issue_date, 
                  :identity_no, :identity_serial, :lastname, 
                  :marital_status, :national_no, :legal_type, :presence => true
end
