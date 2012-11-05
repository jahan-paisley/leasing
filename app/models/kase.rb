class Kase < ActiveRecord::Base
  belongs_to :customer
  belongs_to :user
  attr_accessible :finish_date, :no, :receipt_date, :start_date, :status, :customer_id, :user_id
  validates :customer_id , :presence => true
end
