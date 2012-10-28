class Customer < ActiveRecord::Base

  has_one :person
  attr_accessible :legal_type, :person_id


  validates_inclusion_of :legal_type, :in => lambda { |o| LEGAL_TYPES }

  accepts_nested_attributes_for :person


  LEGAL_TYPES = ['Individual', 'Business']

end