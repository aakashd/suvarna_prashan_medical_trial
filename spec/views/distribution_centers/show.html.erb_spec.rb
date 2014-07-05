require 'rails_helper'

RSpec.describe "distribution_centers/show", :type => :view do
  before(:each) do
    @distribution_center = assign(:distribution_center, DistributionCenter.create!(
      :name => "Name",
      :address => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
