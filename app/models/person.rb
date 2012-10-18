class Person < ActiveRecord::Base

  has_many :addresses , :dependent => :destroy
  has_one :primary_address, :class_name => 'Address'
  
  attr_accessible :birthdate, :fathername, :firstname, 
                  :gender, :identity_issue_city, :identity_issue_date, 
                  :identity_no, :identity_serial, :lastname, 
                  :marital_status, :national_no, :legal_type,
                  :title, :job_title, :job_position, :job_company, :job_industry, :education

  accepts_nested_attributes_for :addresses, :reject_if => lambda { |a| a[:category].blank? }, :allow_destroy => true
end
