# encoding: utf-8
class Person < ActiveRecord::Base
  attr_accessible :birthdate, :fathername, :firstname,
                  :gender, :identity_issue_city, :identity_issue_date,
                  :identity_no, :identity_serial, :lastname,
                  :marital_status, :nationalno,
                  :title, :job_title, :job_position, :job_company,
                  :job_industry, :education, :addresses_attributes #,:primary_address_id
  has_one :customer
  has_many :addresses#, :dependent => :destroy
  #has_one :primary_address, :class_name => 'Address'
  accepts_nested_attributes_for :addresses #,:reject_if => proc { |attributes| attributes['name'].blank? }#, :allow_destroy => true

  validates :nationalno, :nationalno => true, :uniqueness => true
  validates :firstname, :lastname, :gender, :nationalno, :presence => true
  validates :gender, :inclusion => {:in => lambda {|o| GENDERS }}
  validates :marital_status, :inclusion => {:in => lambda {|o| MARITAL_STATUSES }}
  validates :education, :inclusion => {:in => lambda {|o| EDUCATIONS }}, :allow_blank => true

  GENDERS = %w[Male Female]
  MARITAL_STATUSES = %w[Married Single]
  EDUCATIONS = %w[Illiterate UnderDiploma Diploma Bachelor Master PhD Hawzah]


  def to_s
    "#{lastname}, #{firstname}"
  end

end

