require 'rails_helper'

RSpec.describe "patients/edit", :type => :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :name => "MyString",
      :fathers_name => "MyString",
      :mothers_name => "MyString",
      :address => "MyText",
      :mobile => "MyString",
      :landline => "MyString",
      :present_complaints => "MyText",
      :registration_number => "MyString",
      :gender => "MyString",
      :blood_group => "MyString",
      :distribution_center => nil
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input#patient_name[name=?]", "patient[name]"

      assert_select "input#patient_fathers_name[name=?]", "patient[fathers_name]"

      assert_select "input#patient_mothers_name[name=?]", "patient[mothers_name]"

      assert_select "textarea#patient_address[name=?]", "patient[address]"

      assert_select "input#patient_mobile[name=?]", "patient[mobile]"

      assert_select "input#patient_landline[name=?]", "patient[landline]"

      assert_select "textarea#patient_present_complaints[name=?]", "patient[present_complaints]"

      assert_select "input#patient_registration_number[name=?]", "patient[registration_number]"

      assert_select "input#patient_gender[name=?]", "patient[gender]"

      assert_select "input#patient_blood_group[name=?]", "patient[blood_group]"

      assert_select "input#patient_distribution_center_id[name=?]", "patient[distribution_center_id]"
    end
  end
end
