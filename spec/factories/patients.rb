# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :patient do
    name "MyString"
    date_of_birth "2014-07-05"
    fathers_name "MyString"
    mothers_name "MyString"
    address "MyText"
    mobile "MyString"
    landline "MyString"
    present_complaints "MyText"
    registration_number "MyString"
    gender "MyString"
    blood_group "MyString"
    distribution_center nil
  end
end
