# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    person nil
    city nil
    category "MyString"
    level1 "MyString"
    part1 "MyString"
    level2 "MyString"
    part2 "MyString"
    level3 "MyString"
    part3 "MyString"
    description "MyString"
  end
end
