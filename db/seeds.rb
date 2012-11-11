# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'جهانگیر زین الدین', :email => 'jzinedine@gmail.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'میتم تمکین', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name
user.add_role :admin

puts 'SETTING UP CITIES'
cities = ['تهران','کرج','شیراز','اصفهان']
cities.each { |o| City.create! :name => o  }

puts 'seeding person table'
person = Person.new( :firstname => 'جهانگیر', :lastname =>'زین الدین', :nationalno=> '1234567891',
                     :birthdate => '2001-01-01', :gender => 'Male', :marital_status => 'Married')
person.addresses.build do  |add|
  add.level1 = 'Ave'
  add.level2 = 'Square'
  add.part1 = 'شهید محمدی'
  add.part2 = 'رضامنش'
  add.category = 'Homeplace'
end
person.addresses.build do  |add|
  add.level1 = 'Ave'
  add.level2 = 'Alley'
  add.part1 = 'ولی عصر'
  add.part2 = 'قیامت'
  add.category = 'Workplace'
end

if person.save!
  puts "person 1 created"
end

person = Person.new( :firstname => 'رضا', :lastname =>'محمدی', :nationalno=> '1234567881',
                     :birthdate => '1991-01-01', :gender => 'Male', :marital_status => 'Single')
person.addresses.build do  |add|
  add.level1 = 'Ave'
  add.level2 = 'Square'
  add.part1 = 'شهید محمدی'
  add.part2 = 'رضامنش'
  add.category = 'Homeplace'
end
person.addresses.build do  |add|
  add.level1 = 'Ave'
  add.level2 = 'Alley'
  add.part1 = 'ولی عصر'
  add.part2 = 'قیامت'
  add.category = 'Workplace'
end

if person.save!
  puts "person 2 created"
end


puts 'seeding customer table'
cust = Customer.new(:person_id => Person.all.first.id, :legal_type => 'Individual')
if cust.save!
  puts 'Customer created'
end


puts 'seeding correspondent table'
cor = Correspondent.new(:name => 'بانک انصار' , :category => 'بانک')
if cor.save!
  puts 'correspondet created'
end