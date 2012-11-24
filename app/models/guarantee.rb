class Guarantee < ActiveRecord::Base
  attr_accessible :amount, :description, :contract_id
  belongs_to :contract

  def build

  end
  
end
