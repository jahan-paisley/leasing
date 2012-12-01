class Customer < ActiveRecord::Base
  paginates_per 10
  attr_accessible :legal_type, :person_id, :person_attributes
  belongs_to :person
  has_many :kases
  accepts_nested_attributes_for :person

  #TODO turn on validation
  #validates :legal_type, :presence => true
  #validates :legal_type, :inclusion => { :in => lambda { |_| LEGAL_TYPES }}

  normalize_attributes :legal_type

  LEGAL_TYPES = %w[Individual Business]

  def build
    if person.nil?
      build_person
      person.build
    end
  end

  def to_s
    "#{person.firstname || ''} #{person.lastname || ''}" unless person.nil?
  end
end