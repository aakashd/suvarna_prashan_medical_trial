require 'rails_helper'

RSpec.describe "dose_administration_records/edit", :type => :view do
  before(:each) do
    @dose_administration_record = assign(:dose_administration_record, DoseAdministrationRecord.create!(
      :patient => nil,
      :user => nil,
      :nakshatra_date => nil
    ))
  end

  it "renders the edit dose_administration_record form" do
    render

    assert_select "form[action=?][method=?]", dose_administration_record_path(@dose_administration_record), "post" do

      assert_select "input#dose_administration_record_patient_id[name=?]", "dose_administration_record[patient_id]"

      assert_select "input#dose_administration_record_user_id[name=?]", "dose_administration_record[user_id]"

      assert_select "input#dose_administration_record_nakshatra_date_id[name=?]", "dose_administration_record[nakshatra_date_id]"
    end
  end
end
