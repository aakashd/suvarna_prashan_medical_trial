require 'rails_helper'

RSpec.describe "CheckupRecords", :type => :request do
  describe "GET /checkup_records" do
    it "works! (now write some real specs)" do
      get checkup_records_path
      expect(response.status).to be(200)
    end
  end
end
