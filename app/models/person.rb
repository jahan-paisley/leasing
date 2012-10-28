# encoding: utf-8
class Person < ActiveRecord::Base

  attr_accessible :birthdate, :fathername, :firstname,
                  :gender, :identity_issue_city, :identity_issue_date,
                  :identity_no, :identity_serial, :lastname,
                  :marital_status, :national_no,
                  :title, :job_title, :job_position, :job_company,
                  :job_industry, :education, :addresses_attributes
  #:primary_address_id
  has_one :customer
  has_many :addresses, :dependent => :destroy
  #has_one :primary_address, :class_name => 'Address'

  accepts_nested_attributes_for :addresses, :allow_destroy => true

  validates_uniqueness_of :national_no
  validates_presence_of :firstname, :lastname, :gender, :national_no
  validates_inclusion_of :gender, :in => lambda { |o| GENDERS }
  validates_inclusion_of :marital_status, :in => lambda { |o| MARITAL_STATUSES }

  GENDERS = ['Male', 'Female']
  MARITAL_STATUSES = ['Married', 'Single']

end
