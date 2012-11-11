class Contract < ActiveRecord::Base
  attr_accessible :category, :due_date, :idno, :proprty_id,
                  :correspondent_id, :sign_date, :total_amount, :kase_id,
                  :property_attributes, :guarantors_attributes, :guarantees_attributes

  has_one :kase
  belongs_to :property
  belongs_to :correspondent
  has_many :guarantees
  has_many :contract_guarantors
  has_many :guarantors, :through => :contract_guarantors
  accepts_nested_attributes_for :property, :guarantees, :guarantors

  monetize :total_amount
end
