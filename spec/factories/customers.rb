# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    firstname "MyString"
    lastname "MyString"
    identity_no "MyString"
    national_no "MyString"
    birthdate "2012-09-30 11:18:40"
    identity_serial "MyString"
    fathername "MyString"
    identity_issue_date "2012-09-30"
    identity_issue_city "MyString"
    email "MyString"
    legal_type "MyString"
    gender "MyString"
    marital_status "MyString"
  end
end
