require 'rails_helper'

RSpec.describe "distribution_centers/index", :type => :view do
  before(:each) do
    assign(:distribution_centers, [
      DistributionCenter.create!(
        :name => "Name",
        :address => "MyText"
      ),
      DistributionCenter.create!(
        :name => "Name",
        :address => "MyText"
      )
    ])
  end

  it "renders a list of distribution_centers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
