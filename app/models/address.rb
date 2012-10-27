class Address < ActiveRecord::Base
  CATEGORIES = ['Workplace', 'Homeplace']
  LEVELS = ['District', 'Ave', 'Street', 'Alley', 'Square', 'Highway', 'Road', 'Boulevard', 'Freeway', 'Deadend']
  attr_accessible :category, :priority, :description, :level1, :level2, :level3, :part1, :part2, :part3,
                  :phones, :email, :mobiles, :description, :latitude, :longitude, :person_id, :city_id,
                  :postal_code, :unit_name, :building_name, :address_no
  belongs_to :city
  belongs_to :person, :polymorphic => true
  validates_inclusion_of :level1, :level2, :level3, :in => lambda { |o| LEVELS}
  validates_inclusion_of :category, :in => lambda { |o| CATEGORIES }
end
