require 'rails_helper'

RSpec.describe "dose_administration_records/index", :type => :view do
  before(:each) do
    assign(:dose_administration_records, [
      DoseAdministrationRecord.create!(
        :patient => nil,
        :user => nil,
        :nakshatra_date => nil
      ),
      DoseAdministrationRecord.create!(
        :patient => nil,
        :user => nil,
        :nakshatra_date => nil
      )
    ])
  end

  it "renders a list of dose_administration_records" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
