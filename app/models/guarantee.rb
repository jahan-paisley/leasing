class Guarantee < ActiveRecord::Base
  attr_accessible :amount, :description
  belongs_to :contract
end
