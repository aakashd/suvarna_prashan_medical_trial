require 'rails_helper'

RSpec.describe "distribution_centers/new", :type => :view do
  before(:each) do
    assign(:distribution_center, DistributionCenter.new(
      :name => "MyString",
      :address => "MyText"
    ))
  end

  it "renders new distribution_center form" do
    render

    assert_select "form[action=?][method=?]", distribution_centers_path, "post" do

      assert_select "input#distribution_center_name[name=?]", "distribution_center[name]"

      assert_select "textarea#distribution_center_address[name=?]", "distribution_center[address]"
    end
  end
end
