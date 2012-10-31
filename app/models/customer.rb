class Customer < ActiveRecord::Base

  attr_accessible :legal_type, :person_id, :person_attributes
  belongs_to :person
  accepts_nested_attributes_for :person
  validates_inclusion_of :legal_type, :in => lambda { |o| LEGAL_TYPES }

  LEGAL_TYPES = %w[Individual Business]

end