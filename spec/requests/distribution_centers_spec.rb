require 'rails_helper'

RSpec.describe "DistributionCenters", :type => :request do
  describe "GET /distribution_centers" do
    it "works! (now write some real specs)" do
      get distribution_centers_path
      expect(response.status).to be(200)
    end
  end
end
