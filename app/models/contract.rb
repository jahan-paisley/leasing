class Contract < ActiveRecord::Base
  attr_accessible :category, :due_date, :idno, :proprty_id,:property_attributes, :correspondent_id, :sign_date, :total_amount, :kase_id

  has_one :kase
  belongs_to :property
  belongs_to :correspondent
  has_many :guarantees
  has_many :guarantors
 accepts_nested_attributes_for :property
  monetize :total_amount
end
