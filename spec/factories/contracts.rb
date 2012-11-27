#encoding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contract do
    correspondent
    idno "123456"
    category "لیزینگ"
    due_date "2012-11-06"
    total_amount 1245000000
    asset
    sign_date "2012-11-06"
  end
end
