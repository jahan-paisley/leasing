class Property < ActiveRecord::Base
  attr_accessible :category, :description, :idno, :contract_id
  has_one :contract
end
