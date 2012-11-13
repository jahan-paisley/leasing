class Correspondent < ActiveRecord::Base
  attr_accessible :category, :name
  has_many :contracts
end
