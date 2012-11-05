# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :financial_contract do
    correspondent_id 1
    no "MyString"
    category "MyString"
    due_date "2012-11-06"
    total_amount 1
    property_id 1
    sign_date "2012-11-06"
  end
end
