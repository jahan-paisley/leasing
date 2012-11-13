class Property < ActiveRecord::Base
  attr_accessible :category, :description, :idno
  has_one :contract
end
