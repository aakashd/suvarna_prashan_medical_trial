require 'rails_helper'

RSpec.describe "distribution_centers/edit", :type => :view do
  before(:each) do
    @distribution_center = assign(:distribution_center, DistributionCenter.create!(
      :name => "MyString",
      :address => "MyText"
    ))
  end

  it "renders the edit distribution_center form" do
    render

    assert_select "form[action=?][method=?]", distribution_center_path(@distribution_center), "post" do

      assert_select "input#distribution_center_name[name=?]", "distribution_center[name]"

      assert_select "textarea#distribution_center_address[name=?]", "distribution_center[address]"
    end
  end
end
