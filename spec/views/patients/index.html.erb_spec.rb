require 'rails_helper'

RSpec.describe "patients/index", :type => :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        :name => "Name",
        :fathers_name => "Fathers Name",
        :mothers_name => "Mothers Name",
        :address => "MyText",
        :mobile => "Mobile",
        :landline => "Landline",
        :present_complaints => "MyText",
        :registration_number => "Registration Number",
        :gender => "Gender",
        :blood_group => "Blood Group",
        :distribution_center => nil
      ),
      Patient.create!(
        :name => "Name",
        :fathers_name => "Fathers Name",
        :mothers_name => "Mothers Name",
        :address => "MyText",
        :mobile => "Mobile",
        :landline => "Landline",
        :present_complaints => "MyText",
        :registration_number => "Registration Number",
        :gender => "Gender",
        :blood_group => "Blood Group",
        :distribution_center => nil
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fathers Name".to_s, :count => 2
    assert_select "tr>td", :text => "Mothers Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Landline".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Number".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Blood Group".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
