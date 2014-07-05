require "rails_helper"

RSpec.describe DoseAdministrationRecordsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dose_administration_records").to route_to("dose_administration_records#index")
    end

    it "routes to #new" do
      expect(:get => "/dose_administration_records/new").to route_to("dose_administration_records#new")
    end

    it "routes to #show" do
      expect(:get => "/dose_administration_records/1").to route_to("dose_administration_records#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dose_administration_records/1/edit").to route_to("dose_administration_records#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dose_administration_records").to route_to("dose_administration_records#create")
    end

    it "routes to #update" do
      expect(:put => "/dose_administration_records/1").to route_to("dose_administration_records#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dose_administration_records/1").to route_to("dose_administration_records#destroy", :id => "1")
    end

  end
end
