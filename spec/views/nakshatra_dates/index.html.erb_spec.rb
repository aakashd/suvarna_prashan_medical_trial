require 'rails_helper'

RSpec.describe "nakshatra_dates/index", :type => :view do
  before(:each) do
    assign(:nakshatra_dates, [
      NakshatraDate.create!(),
      NakshatraDate.create!()
    ])
  end

  it "renders a list of nakshatra_dates" do
    render
  end
end
