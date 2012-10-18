class Address < ActiveRecord::Base
  belongs_to :person
  belongs_to :city
  attr_accessible :category, :priority, :description, :level1, :level2, :level3, :part1, :part2, :part3,
                  :phone1, :phone2, :phone_range, :email, :mobile1, :mobile2, :description, :latitude, :longitude
end
