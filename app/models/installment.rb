class Installment < ActiveRecord::Base
  attr_accessible :amount, :due_date, :kase, :paid
end
