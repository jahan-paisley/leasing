class Kase < ActiveRecord::Base

  attr_accessible :finish_date, :idno, :receipt_date, :start_date, :status,
                  :customer_id, :user_id, :contract_id,:contract_attributes,
                  :installments_attributes, :payments_attributes, :customer_attributes

  belongs_to :contract
  belongs_to :customer
  belongs_to :user
  has_many :installments, :dependent => :destroy
  has_many :payments, :dependent => :destroy

  accepts_nested_attributes_for :contract, :installments, :payments, :customer
  #validates :customer, :presence => true

  def build
    build_contract
    contract.build_property
    build_customer
    customer.build_person
    customer.person.build
    contract.guarantees.build
    contract.guarantees.each { |e| e.build  }
    contract.guarantors.build
    contract.guarantors.each { |e| e.build }
    installments.build
    payments.build
  end
  
end
