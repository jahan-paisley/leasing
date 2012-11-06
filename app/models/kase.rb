class Kase < ActiveRecord::Base

  attr_accessible :finish_date, :idno, :receipt_date, :start_date, :status, :customer_id, :user_id, :contract_id,
                  :contract_attributes
  belongs_to :contract
  belongs_to :customer
  belongs_to :user

  accepts_nested_attributes_for :contract
  validates :customer_id , :presence => true
end
