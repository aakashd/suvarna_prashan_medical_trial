require 'rails_helper'

RSpec.describe "nakshatra_dates/show", :type => :view do
  before(:each) do
    @nakshatra_date = assign(:nakshatra_date, NakshatraDate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
