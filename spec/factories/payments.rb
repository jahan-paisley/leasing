# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment do
    kase nil
    amount 1
    payment_date "2012-11-12"
    origin_account "MyString"
    origin_bank "MyString"
    benef_account "MyString"
    payment_method "MyString"
    idno "MyString"
  end
end
