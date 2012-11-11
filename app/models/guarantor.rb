class Guarantor < ActiveRecord::Base
  attr_accessible :person_id
  belongs_to :person
  has_many :contracts, :through => :contract_guarantors
end
