class Property < ActiveRecord::Base
  attr_accessible :category, :description, :no
  belongs_to  :financial_contract
end
