class Address < ActiveRecord::Base
  attr_accessible :category, :priority, :description, :level1, :level2, :level3, :part1, :part2, :part3,
                  :phones, :email, :mobiles, :description, :latitude, :longitude , :person_id , :city_id
  belongs_to :city
  belongs_to :person, :polymorphic => true
  validates_inclusion_of :level1,:level2,:level3, :in => lambda{|o| ['Ave', 'Street', 'Alley', 'Square', 'Highway', 'Road', 'Boulevard', 'Freeway', 'Deadend']  }
  validates_inclusion_of :category, :in => lambda{|o|  ['Workplace', 'Homeplace']  }
end
