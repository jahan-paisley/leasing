class FinancialContract < ActiveRecord::Base
  attr_accessible :category, :due_date, :no, :property_id, :correspondent_id, :sign_date,
                  :total_amount, :correspondent_id
  has_one :property
  belongs_to :correspondent
  has_many :guarantees
  has_many :guarantors

  monetize :total_amount
end
