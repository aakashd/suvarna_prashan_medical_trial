require 'rails_helper'

RSpec.describe "nakshatra_dates/edit", :type => :view do
  before(:each) do
    @nakshatra_date = assign(:nakshatra_date, NakshatraDate.create!())
  end

  it "renders the edit nakshatra_date form" do
    render

    assert_select "form[action=?][method=?]", nakshatra_date_path(@nakshatra_date), "post" do
    end
  end
end
