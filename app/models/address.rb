class Address < ActiveRecord::Base

  attr_accessible :category, :priority, :description, :level1, :level2, :level3, :part1, :part2, :part3,
                  :phones, :email, :mobiles, :description, :latitude, :longitude, :person_id, :city_id,
                  :postal_code, :unit_name, :building_name, :address_no, :district, :city_attributes

  belongs_to :city
  belongs_to :person

  #validates :level1, :level2, :presence => true, :inclusion => {:in => lambda { |_| LEVELS }}
  #validates :category, :inclusion => {:in => lambda { |_| CATEGORIES }}
  #validates :part1, :part2, :presence => true

  validates :email, :email => true, :allow_blank => true
  validates :phones, :format => {:with => /^(0[1-8]\d{9}[-,])*0[1-8]\d{9}$/i, :on => :create}, :allow_blank => true
  validates :mobiles, :format => {:with => /^(09\d{9}[-,])*09\d{9}$/i, :on => :create}, :allow_blank => true

  accepts_nested_attributes_for :city

  CATEGORIES = %w[Workplace Homeplace]
  LEVELS = %w[Ave Street Alley Square Highway Road Boulevard Freeway Deadend]

  def build
    #build_city
  end
  
end
