class Payment < ActiveRecord::Base
  belongs_to :kase
  attr_accessible :amount, :benef_account, :idno, :origin_account, :origin_bank, :payment_date, :payment_method
end
