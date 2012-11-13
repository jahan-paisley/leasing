class Customer < ActiveRecord::Base

  attr_accessible :legal_type, :person_id, :person_attributes
  belongs_to :person
  has_many :kases
  accepts_nested_attributes_for :person

  validates :legal_type, :inclusion => { :in => lambda { |o| LEGAL_TYPES }}

  LEGAL_TYPES = %w[Individual Business]

end