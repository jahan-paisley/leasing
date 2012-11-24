#encoding: utf-8
# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :province do
    sequence(:name) {|n| "استان #{n}" }
  end
end
