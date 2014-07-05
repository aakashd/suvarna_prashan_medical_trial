require 'rails_helper'

RSpec.describe "checkup_records/index", :type => :view do
  before(:each) do
    assign(:checkup_records, [
      CheckupRecord.create!(
        :patient => nil,
        :user => nil,
        :height => 1.5,
        :weight => 1.5,
        :mental_assessment => "MyText",
        :physical_assessment => "MyText",
        :notes => "MyText"
      ),
      CheckupRecord.create!(
        :patient => nil,
        :user => nil,
        :height => 1.5,
        :weight => 1.5,
        :mental_assessment => "MyText",
        :physical_assessment => "MyText",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of checkup_records" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
