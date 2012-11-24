#encoding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :city do
    sequence(:name) {|n| "شهر #{n}" }
    province
  end
end