class Contract < ActiveRecord::Base
  attr_accessible :category, :due_date, :idno, :proprty_id,
                  :correspondent_id, :sign_date, :total_amount,
                  :asset_attributes, :guarantors_attributes, :guarantees_attributes

  has_one :kase
  belongs_to :asset
  belongs_to :correspondent
  has_many :guarantees, :dependent => :destroy
  has_many :contract_guarantors, :dependent => :destroy
  has_many :guarantors, :through => :contract_guarantors

  accepts_nested_attributes_for :asset, :guarantees, :guarantors

  def build
    if guarantees.empty?
      guarantees.build
      guarantees.each { |e| e.build }
    end
    if guarantors.empty?
      guarantors.build
      guarantors.each { |e| e.build }
    end
    if asset.nil?
      build_asset
    end
  end
end