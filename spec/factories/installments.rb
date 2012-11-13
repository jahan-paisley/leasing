# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :installment do
    amount 1
    due_date "2012-11-12"
    kase ""
    paid false
  end
end
