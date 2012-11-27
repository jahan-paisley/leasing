class Kase < ActiveRecord::Base

  attr_accessible :finish_date, :idno, :receipt_date, :start_date, :status,
                  :customer_id, :user_id, :contract_id, :contract_attributes,
                  :installments_attributes, :payments_attributes, :customer_attributes

  belongs_to :contract
  belongs_to :customer
  belongs_to :user
  has_many :installments, :dependent => :destroy
  has_many :payments, :dependent => :destroy

  accepts_nested_attributes_for :contract, :installments, :payments, :customer
  #validates :customer, :presence => true

  def build
    if contract.nil?
      build_contract
      contract.build
    end
    if customer.nil?
      build_customer
      customer.build
    end
    installments.build if installments.empty?
    payments.build if payments.empty?
  end

end
