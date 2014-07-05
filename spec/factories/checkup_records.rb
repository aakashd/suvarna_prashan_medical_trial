# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkup_record do
    patient nil
    user nil
    height 1.5
    weight 1.5
    mental_assessment "MyText"
    physical_assessment "MyText"
    notes "MyText"
  end
end
