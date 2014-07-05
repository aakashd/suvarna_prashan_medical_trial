require 'rails_helper'

RSpec.describe "checkup_records/show", :type => :view do
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
