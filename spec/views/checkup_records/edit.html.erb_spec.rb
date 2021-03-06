require 'rails_helper'

RSpec.describe "checkup_records/edit", :type => :view do
  before(:each) do
    @checkup_record = assign(:checkup_record, CheckupRecord.create!(
      :patient => nil,
      :user => nil,
      :height => 1.5,
      :weight => 1.5,
      :mental_assessment => "MyText",
      :physical_assessment => "MyText",
      :notes => "MyText"
    ))
  end

  it "renders the edit checkup_record form" do
    render

    assert_select "form[action=?][method=?]", checkup_record_path(@checkup_record), "post" do

      assert_select "input#checkup_record_patient_id[name=?]", "checkup_record[patient_id]"

      assert_select "input#checkup_record_user_id[name=?]", "checkup_record[user_id]"

      assert_select "input#checkup_record_height[name=?]", "checkup_record[height]"

      assert_select "input#checkup_record_weight[name=?]", "checkup_record[weight]"

      assert_select "textarea#checkup_record_mental_assessment[name=?]", "checkup_record[mental_assessment]"

      assert_select "textarea#checkup_record_physical_assessment[name=?]", "checkup_record[physical_assessment]"

      assert_select "textarea#checkup_record_notes[name=?]", "checkup_record[notes]"
    end
  end
end
