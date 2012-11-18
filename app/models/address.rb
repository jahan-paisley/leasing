class Address < ActiveRecord::Base

  attr_accessible :category, :priority, :description, :level1, :level2, :level3, :part1, :part2, :part3,
                  :phones, :email, :mobiles, :description, :latitude, :longitude, :person_id, :city_id,
                  :postal_code, :unit_name, :building_name, :address_no, :district

  belongs_to :city
  belongs_to :person
  validates :level1, :level2, :presence => true, :inclusion => {:in => lambda { |o| LEVELS }}
  validates :category, :inclusion => {:in => lambda { |o| CATEGORIES }}
  validates_presence_of :part1, :part2
  validates :email, :email => true, :allow_blank => true
  validates :phones, :format => {:with => /^(0[1-8]\d{9}[-,])*0[1-8]\d{9}$/i, :on => :create}, :allow_blank => true
  validates :mobiles, :format => {:with => /^(09\d{9}[-,])*09\d{9}$/i, :on => :create}, :allow_blank => true

  CATEGORIES = %w[Workplace Homeplace]
  LEVELS = %w[Ave Street Alley Square Highway Road Boulevard Freeway Deadend]

end
