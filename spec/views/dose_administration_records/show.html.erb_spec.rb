require 'rails_helper'

RSpec.describe "dose_administration_records/show", :type => :view do
  before(:each) do
    @dose_administration_record = assign(:dose_administration_record, DoseAdministrationRecord.create!(
      :patient => nil,
      :user => nil,
      :nakshatra_date => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
