require 'rails_helper'

RSpec.describe "nakshatra_dates/new", :type => :view do
  before(:each) do
    assign(:nakshatra_date, NakshatraDate.new())
  end

  it "renders new nakshatra_date form" do
    render

    assert_select "form[action=?][method=?]", nakshatra_dates_path, "post" do
    end
  end
end
