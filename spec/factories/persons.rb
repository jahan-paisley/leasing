#encoding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    firstname 'جهانگیر'
    lastname 'زین الدین'
    nationalno '1234567891'
    birthdate  DateTime.now.prev_year(30)
    gender  'Male'
    marital_status  'Married'
    after(:create) do |person|
        FactoryGirl.create_list(:address, 2, person: person)
    end
  end

  factory :address do
    person
    city
    category 'Homeplace'
    level1 'Ave'
    level2 'Square'
    level3 'Deadend'
    sequence(:part1) {|n| "کوچه #{n}" }
    part2 'رضامنش'
    part3 'قداست'
    description 'سر کوچه یک مسجد است'
  end
end
