require 'rails_helper'

RSpec.describe "DoseAdministrationRecords", :type => :request do
  describe "GET /dose_administration_records" do
    it "works! (now write some real specs)" do
      get dose_administration_records_path
      expect(response.status).to be(200)
    end
  end
end
