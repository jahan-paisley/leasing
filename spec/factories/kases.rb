# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :kase do
    start_date "2012-11-05"
    finish_date "2012-11-05"
    customer nil
    user nil
    status "MyString"
    idno 1
    receipt_date "2012-11-05"
  end
end
