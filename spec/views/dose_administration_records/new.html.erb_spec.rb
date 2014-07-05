require 'rails_helper'

RSpec.describe "dose_administration_records/new", :type => :view do
  before(:each) do
    assign(:dose_administration_record, DoseAdministrationRecord.new(
      :patient => nil,
      :user => nil,
      :nakshatra_date => nil
    ))
  end

  it "renders new dose_administration_record form" do
    render

    assert_select "form[action=?][method=?]", dose_administration_records_path, "post" do

      assert_select "input#dose_administration_record_patient_id[name=?]", "dose_administration_record[patient_id]"

      assert_select "input#dose_administration_record_user_id[name=?]", "dose_administration_record[user_id]"

      assert_select "input#dose_administration_record_nakshatra_date_id[name=?]", "dose_administration_record[nakshatra_date_id]"
    end
  end
end
