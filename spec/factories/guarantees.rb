# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guarantee do
    references ""
    amount 1
    description "MyString"
  end
end
