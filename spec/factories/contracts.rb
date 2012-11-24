# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contract do
    correspondent
    idno "MyString"
    category "MyString"
    due_date "2012-11-06"
    total_amount 1
    property 
    sign_date "2012-11-06"
  end
end
