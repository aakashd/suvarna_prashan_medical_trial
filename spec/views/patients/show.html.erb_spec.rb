require 'rails_helper'

RSpec.describe "patients/show", :type => :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Fathers Name/)
    expect(rendered).to match(/Mothers Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/Landline/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Registration Number/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Blood Group/)
    expect(rendered).to match(//)
  end
end
