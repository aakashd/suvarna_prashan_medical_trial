require "rails_helper"

RSpec.describe CheckupRecordsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/checkup_records").to route_to("checkup_records#index")
    end

    it "routes to #new" do
      expect(:get => "/checkup_records/new").to route_to("checkup_records#new")
    end

    it "routes to #show" do
      expect(:get => "/checkup_records/1").to route_to("checkup_records#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/checkup_records/1/edit").to route_to("checkup_records#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/checkup_records").to route_to("checkup_records#create")
    end

    it "routes to #update" do
      expect(:put => "/checkup_records/1").to route_to("checkup_records#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/checkup_records/1").to route_to("checkup_records#destroy", :id => "1")
    end

  end
end
