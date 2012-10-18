class City < ActiveRecord::Base
  belongs_to :province
  attr_accessible :name
end
