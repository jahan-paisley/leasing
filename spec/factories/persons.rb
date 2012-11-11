# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    firstname "MyString"
    lastname "MyString"
    identity_no "MyString"
    nationalno "1234567891"
    birthdate "2012-09-30"
    identity_serial "MyString"
    fathername "MyString"
    identity_issue_date "2012-09-30"
    identity_issue_city "MyString"
    legal_type "MyString"
    gender "Male"
    marital_status "Married"
    addresses
  end
end
