# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guarantee do
    contract
    amount 1
    description "MyString"
  end
end
