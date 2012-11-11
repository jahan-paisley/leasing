class ContractGuarantor < ActiveRecord::Base
  belongs_to :guarantor
  belongs_to :contract
end
