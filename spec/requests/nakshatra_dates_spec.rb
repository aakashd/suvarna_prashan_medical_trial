require 'rails_helper'

RSpec.describe "NakshatraDates", :type => :request do
  describe "GET /nakshatra_dates" do
    it "works! (now write some real specs)" do
      get nakshatra_dates_path
      expect(response.status).to be(200)
    end
  end
end
